require 'test_helper'

class Post::SectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_section = post_sections(:one)
  end

  test "should get index" do
    get post_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_post_section_url
    assert_response :success
  end

  test "should create post_section" do
    assert_difference('Post::Section.count') do
      post post_sections_url, params: { post_section: {  } }
    end

    assert_redirected_to post_section_url(Post::Section.last)
  end

  test "should show post_section" do
    get post_section_url(@post_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_section_url(@post_section)
    assert_response :success
  end

  test "should update post_section" do
    patch post_section_url(@post_section), params: { post_section: {  } }
    assert_redirected_to post_section_url(@post_section)
  end

  test "should destroy post_section" do
    assert_difference('Post::Section.count', -1) do
      delete post_section_url(@post_section)
    end

    assert_redirected_to post_sections_url
  end
end
