require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get posts_index_url
    assert_response :success
  end

  test "should get show" do
    get posts_show_url
    assert_response :success
  end

  test "should get add" do
    get posts_add_url
    assert_response :success
  end

  test "should get edit" do
    get posts_edit_url
    assert_response :success
  end
end
