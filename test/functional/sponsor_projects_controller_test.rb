require 'test_helper'

class SponsorProjectsControllerTest < ActionController::TestCase
  setup do
    @sponsor_project = sponsor_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sponsor_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sponsor_project" do
    assert_difference('SponsorProject.count') do
      post :create, sponsor_project: { id_project: @sponsor_project.id_project, id_sponsor: @sponsor_project.id_sponsor, id_sponsorProject: @sponsor_project.id_sponsorProject }
    end

    assert_redirected_to sponsor_project_path(assigns(:sponsor_project))
  end

  test "should show sponsor_project" do
    get :show, id: @sponsor_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sponsor_project
    assert_response :success
  end

  test "should update sponsor_project" do
    put :update, id: @sponsor_project, sponsor_project: { id_project: @sponsor_project.id_project, id_sponsor: @sponsor_project.id_sponsor, id_sponsorProject: @sponsor_project.id_sponsorProject }
    assert_redirected_to sponsor_project_path(assigns(:sponsor_project))
  end

  test "should destroy sponsor_project" do
    assert_difference('SponsorProject.count', -1) do
      delete :destroy, id: @sponsor_project
    end

    assert_redirected_to sponsor_projects_path
  end
end
