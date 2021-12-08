require "test_helper"

class ConfirmRecipeControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get confirm_recipe_create_url
    assert_response :success
  end
end
