# typed: false

module Ektar
  class SelectOrganizationController < ApplicationController
    before_action :authenticate_user!

    sig { void }
    def new
      @organizations = current_user.organizations

      if current_user.super_admin?
        redirect_to ektar_url_helpers.super_admin_organizations_path
      elsif @organizations.size > 1
        render layout: "ektar/users"
      else
        redirect_to ektar_url_helpers.admin_users_path
      end
    end

    sig { void }
    def create
      set_organization

      redirect_to select_plan_or(users_path)
    end

    sig { void }
    def update
      set_organization

      redirect_to select_plan_or(request.referer)
    end

    private

    def set_organization
      organization_id = params.dig(:organization_id)
      @organization = Ektar::Organization.find_by(global_id: organization_id)

      update_session_cookie(organization: @organization)
    end

    def select_plan_or(path)
      current_user.is_admin?(@organization) && @organization.plan_present? ? path : ektar_url_helpers.admin_new_select_plan_path
    end

    sig { void }
    def user_is_admin
      redirect_to Ektar.configuration.root_app_path unless current_user.is_admin?(current_organization)
    end
  end
end
