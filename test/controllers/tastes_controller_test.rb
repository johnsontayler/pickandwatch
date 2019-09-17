require 'test_helper'

class TastesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get tastes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get tastes_destroy_url
    assert_response :success
  end

end
