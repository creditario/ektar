# typed: ignore
# frozen_string_literal: true

require "pagy"
require "pagy/extras/bulma"
require "pagy/extras/i18n"
require "pundit"

module Ektar
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    extend T::Sig
    include Pundit

    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

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

    sig { returns(String) }
    def full_host
      "#{request.protocol}#{request.host_with_port}"
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

    sig { returns(T.nilable(T::Boolean)) }
    def super_admin?
      current_user&.super_admin?
    end

    def authenticate_user!
      unless user_signed_in?
        session[:return_to] = request.fullpath
        redirect_to (Ektar.configuration.sign_in_path || ektar.new_sessions_path), alert: t("flash.session.authenticate!")
      end
    end

    sig { params(ip: String).returns(String) }
    def format_ip(ip)
      T.must(ip.split(".")[0..-2]).join(".") + ".XXX"
    end

    # Session methods
    sig { returns(T.nilable(Ektar::User)) }
    def current_user
      @current_user ||= Ektar::User
        .eager_load(memberships: :organization)
        .find_by(global_id: session_cookie["user"])
    end

    sig { returns(T.nilable(Ektar::Organization)) }
    def current_organization
      @current_organization ||= Ektar::Organization.find_by(global_id: session_cookie["organization"])
    end

    sig { returns(T::Boolean) }
    def user_signed_in?
      !!current_user
    end
    alias signed_in_user? user_signed_in?

    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def session_cookie
      @session_cookie = cookies.encrypted[session_cookie_name] || {} if @session_cookie.nil? || @session_cookie == {}
      @session_cookie
    end

    sig { returns(String) }
    def session_cookie_name
      @session_cookie_name ||= "#{Ektar.configuration.session_name}_remember_me"
    end

    def user_not_authorized
      flash[:alert] = t("flash.policy.not_authorized")

      if current_organization && current_user.is_admin?(current_organization)
        redirect_to(ektar.root_path)
      else
        redirect_to Ektar.configuration.root_app_path
      end
    end

    private

    sig { returns(TrueClass) }
    def debug_caller
      code_caller = caller.select { |c| c.include?("ektar") }[0..1] || []
      Rails.logger.debug "\e[31mDEBUG [#{code_caller[0]&.split(" ")&.last}] #{code_caller[1]}\033[0m"
    end

    sig { params(user: Ektar::User, organization: T.nilable(Ektar::Organization)).void }
    def update_session_cookie(user: @current_user, organization: @current_organization)
      user_id = user&.global_id || 0
      organization_id = organization&.global_id || 0

      @session_cookie = cookies.encrypted[session_cookie_name] = {
        value: {
          user: user_id,
          organization: organization_id
        },
        expires: Time.now + Ektar.configuration.session_expiration.day,
        domain: Ektar.configuration.session_domain
      }

      @current_user = user
      @current_organization = organization
    end

    helper_method :collection, :resource,
      :super_admin?, :select_options,
      :current_user, :user_signed_in?,
      :current_organization, :ektar
  end
end
