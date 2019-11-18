require 'test_helper'

class PlanetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get planets_index_url
    assert_response :success
  end

  test "should get show" do
    get planets_show_url
    assert_response :success
  end

  test "should get new" do
    get planets_new_url
    assert_response :success
  end

  test "should get create" do
    get planets_create_url
    assert_response :success
  end

  test "should get edit" do
    get planets_edit_url
    assert_response :success
  end

  test "should get update" do
    get planets_update_url
    assert_response :success
  end

  test "should get destroy" do
    get planets_destroy_url
    assert_response :success
  end

end
