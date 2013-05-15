require 'test_helper'

class PartnerProjectsControllerTest < ActionController::TestCase
  setup do
    @partner_project = partner_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partner_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partner_project" do
    assert_difference('PartnerProject.count') do
      post :create, partner_project: { id_partner: @partner_project.id_partner, id_partnerProject: @partner_project.id_partnerProject, id_project: @partner_project.id_project }
    end

    assert_redirected_to partner_project_path(assigns(:partner_project))
  end

  test "should show partner_project" do
    get :show, id: @partner_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partner_project
    assert_response :success
  end

  test "should update partner_project" do
    put :update, id: @partner_project, partner_project: { id_partner: @partner_project.id_partner, id_partnerProject: @partner_project.id_partnerProject, id_project: @partner_project.id_project }
    assert_redirected_to partner_project_path(assigns(:partner_project))
  end

  test "should destroy partner_project" do
    assert_difference('PartnerProject.count', -1) do
      delete :destroy, id: @partner_project
    end

    assert_redirected_to partner_projects_path
  end
end
