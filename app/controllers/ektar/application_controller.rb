# typed: true
# frozen_string_literal: true

require "pagy"
require "pagy/extras/bulma"
require "pagy/extras/i18n"

module Ektar
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    extend T::Sig
    include Kernel
    include Rack::Request::Helpers
    class ResourceResponse
      extend T::Sig
      sig { params(block: T.untyped).returns(T.untyped) }
      def response(&block)
        @block = block
      end

      sig { returns(T.untyped) }
      def code
        @block
      end
    end

    attr_reader :pagination, :resource, :collection

    sig { returns(NilClass) }
    def authenticate_superadmin!
      session[:super_admin] = authenticate_or_request_with_http_basic("Restricted Access") { |username, password|
        username == Ektar.configuration.organization_username && password == Ektar.configuration.organization_password
      }

      return render status: :not_authorized unless super_admin?
    end

    sig { params(object: ActiveRecord::Base, options: T::Hash[Symbol, T.untyped], block: T.untyped).returns(String) }
    def redirect_with(object, options, &block)
      set_flash options
    end

    sig { returns(ActionController::Parameters) }
    def resource_secure_params
      params_method = "#{action_name}_secure_params".to_sym

      filtered_params = (respond_to?(params_method, true) && send(params_method)) ||
        (respond_to?(:secure_params, true) && send(:secure_params))

      filtered_params || params
    end

    sig { params(options: T::Hash[Symbol, T.untyped]).returns(String) }
    def set_flash(options = {})
      result = options[:errors].present? ? :alert : :notice
      default_key = "flash.#{options[:action]}.#{result}"
      resource_key = "flash.#{options[:action]}.#{options[:klass]}.#{result}"

      flash_message = I18n.t(resource_key, default: I18n.t(default_key))
      if result == :alert
        flash.now[result] = flash_message
      else
        flash[result] = flash_message
      end
    end

    sig { returns(T::Boolean) }
    def super_admin?
      @super_admin ||= session[:super_admin].present?
    end

    sig { returns(T.nilable(Ektar::User)) }
    def current_user
      @_current_user ||= Ektar::User.find_by(global_id: cookies.encrypted["#{Ektar.configuration.session_name}_remember_me"])
    end

    sig { returns(T::Boolean) }
    def user_signed_in?
      current_user.present?
    end

    helper_method :collection, :resource,
      :super_admin?, :select_options,
      :current_user, :user_signed_in?
  end
end
