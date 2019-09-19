# frozen_string_literal: true

require "pagy"
require "pagy/extras/i18n"

module Ektar
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    layout "ektar/application"
    include Pagy::Backend

    class ResourceResponse
      def response(&block)
        @block = block
      end

      def code
        @block
      end
    end

    def collection
      @collection ||= begin
                        @pagination, collection = pagy(resource_class.order(updated_at: :desc))
                        collection
                      end
    end

    attr_reader :pagination, :resource

    def build_resource(options = {})
      resource_class.new options
    end

    def resource_show
      get_resource || find_resource
    end

    def resource_ivar
      "@#{resource_class.model_name.singular}"
    end

    def create_resource
      resource_class.new(get_secure_params).tap do |model|
        model.save
        @resource = model
      end
    end

    def get_resource
      instance_variable_get resource_ivar
    end

    def set_resource_ivar(object)
      instance_variable_set resource_ivar, object
    end

    def find_resource
      @resource ||= begin
                      object = resource_class.find(params[:id])
                      set_resource_ivar object
                      object
                    end
    end

    def find_and_update_resource
      model = resource_class.find(params[:id])
      model.tap do |m|
        m.update get_secure_params
        set_resource_ivar m
      end
    end

    def collection_path
      send "#{resource_class.model_name.route_key}_path"
    end

    def action_response_dual(object, options, &block)
      invalid_resource = @resource&.errors&.any?

      set_flash options.merge(
        klass: resource_class.model_name.element,
        errors: invalid_resource,
        action: action_name
      )

      case block.try(:arity)
      when 2
        success = ResourceResponse.new
        failure = ResourceResponse.new
        block.call success, failure

        if invalid_resource
          failure.code.call
        else
          success.code.call
        end

      when 1
        success = ResourceResponse.new
        block.call success

        if invalid_resource
          render object.persisted? ? :edit : :new
        elsif success.code.present?
          success.code.call
        else
          redirect_to options[:location]
        end

      else
        if invalid_resource
          render object.persisted? ? :edit : :new
        else
          redirect_to options[:location]
        end
      end
    end

    def redirect_with(object, options, &block)
      args = [object, options]
      set_flash options
    end

    def get_secure_params
      params_method = "#{action_name}_secure_params".to_sym

      filterd_params =
        (send(params_method) if respond_to?(params_method, true)) ||
        (send(:secure_params) if respond_to?(:secure_params, true))

      unless filterd_params
        raise NotImplementedError,
          "You need to define template methods for strong params"
      end

      filterd_params
    end

    def resource_class
      @resource_class ||= if model_name.to_s.include? "_"
        ns, *klass = model_name.to_s.split("_").collect(&:camelize)
        begin
          "#{ns}::#{klass.join("")}".constantize
        rescue NameError
          "#{ns}#{klass.join("")}".constantize
        end
      else
        model_name.to_s.camelize.constantize
      end
    end

    def set_flash(options = {})
      result = options[:errors].present? ? :alert : :notice
      default_key = "flash.#{options[:action]}.#{result}"
      resource_key = "flash.#{options[:action]}.#{options[:klass]}.#{result}"

      flash[result] = I18n.t(resource_key, default: I18n.t(default_key))
    end
    helper_method :action_response_dual, :collection, :build_resource, :resource, :create_resource, :respond_with_dual, :resource_class, :resource_show, :find_and_update_resource
  end
end
