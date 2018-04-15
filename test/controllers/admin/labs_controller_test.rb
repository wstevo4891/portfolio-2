require 'test_helper'

class Admin::LabsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_lab = admin_labs(:one)
  end

  test "should get index" do
    get admin_labs_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_lab_url
    assert_response :success
  end

  test "should create admin_lab" do
    assert_difference('Admin::Lab.count') do
      post admin_labs_url, params: { admin_lab: {  } }
    end

    assert_redirected_to admin_lab_url(Admin::Lab.last)
  end

  test "should show admin_lab" do
    get admin_lab_url(@admin_lab)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_lab_url(@admin_lab)
    assert_response :success
  end

  test "should update admin_lab" do
    patch admin_lab_url(@admin_lab), params: { admin_lab: {  } }
    assert_redirected_to admin_lab_url(@admin_lab)
  end

  test "should destroy admin_lab" do
    assert_difference('Admin::Lab.count', -1) do
      delete admin_lab_url(@admin_lab)
    end

    assert_redirected_to admin_labs_url
  end
end
