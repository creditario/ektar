require_dependency "ektar/application_controller"

module Ektar
  class SessionsController < ApplicationController
    def new
      @resource = Ektar::User.new

      render :new, layout: "ektar/users"
    end

    def create
      @resource = User.find_by(email: params.dig(:user, :email))
      if @resource&.authenticate(params.dig(:user, :password))

        cookies.encrypted["#{Ektar.configuration.session_name}_remember_me"] = {value: @resource.global_id, expires: Ektar.configuration.session_expiration || 2.weeks}
        redirect_to root_path
      else
        render :new, layout: "ektar/users"
      end
    end

    def destroy
    end
  end
end
