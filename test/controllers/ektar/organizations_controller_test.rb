# typed: ignore
require "test_helper"

module Ektar
  class OrganizationsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers
    def setup
      @headers = {headers: http_login}
      @organization = ektar_organizations(:organization)
    end

    test "should get index" do
      get organizations_path, @headers

      assert_response :success
    end

    test "should get new" do
      get new_organization_path, @headers

      assert_response :success
    end

    test "should get show" do
      get organization_path(@organization.id)

      assert_response :success
      assert_select "span", value: @organization.name
    end

    test "should get edit" do
      get edit_organization_path(@organization.id), @headers

      assert_response :success
      assert_select ".input", value: @organization.name
    end

    test "can create organization" do
      assert_difference "Ektar::Organization.count", 1 do
        post organizations_path, {params: valid_organization, headers: http_login}
      end

      assert_equal "Organization test", Ektar::Organization.last.name
    end

    test "can show organization" do
      get organization_path(@organization.id)

      assert :success
    end

    test "can update organization" do
      put organization_path(@organization.id), {params: {organization: {name: "michelada"}}, headers: http_login}
      @organization.reload

      assert_equal "michelada", @organization.name
    end

    test "can soft-delete organization" do
      assert_no_difference "Ektar::Organization.count" do
        delete organization_path(@organization.id), @headers
      end

      refute @organization.reload.enable?
    end

    def valid_organization
      {organization: {name: "Organization test", enable: true}}
    end

    def http_login
      username = Ektar.configuration.organization_username
      password = Ektar.configuration.organization_password
      {HTTP_AUTHORIZATION: ActionController::HttpAuthentication::Basic.encode_credentials(username, password)}
    end
  end
end
