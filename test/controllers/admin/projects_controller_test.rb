require 'test_helper'

module Admin
  class ProjectsControllerTest < ActionDispatch::IntegrationTest
    setup do
      @project = projects(:one)
    end

    test "should get index" do
      get admin_projects_url
      assert_response :success
    end

    test "should get new" do
      get new_admin_project_url
      assert_response :success
    end

    test "should create project" do
      assert_difference('Project.count') do
        post admin_projects_url, params: { project: {  } }
      end

      assert_redirected_to admin_project_url(::Project.last)
    end

    test "should show project" do
      get admin_project_url(@project)
      assert_response :success
    end

    test "should get edit" do
      get edit_admin_project_url(@project)
      assert_response :success
    end

    test "should update project" do
      patch admin_project_url(@project), params: { project: {  } }
      assert_redirected_to project_url(@project)
    end

    test "should destroy project" do
      assert_difference('Project.count', -1) do
        delete admin_project_url(@project)
      end

      assert_redirected_to admin_projects_url
    end
  end
end
