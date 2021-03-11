require "test_helper"

class DeadpoolControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get deadpool_home_url
    assert_response :success
  end

  test "should get about" do
    get deadpool_about_url
    assert_response :success
  end

  test "should get download" do
    get deadpool_download_url
    assert_response :success
  end
end
