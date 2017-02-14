require 'test_helper'

class AuthPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auth_property = auth_properties(:one)
  end

  test "should get index" do
    get auth_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_auth_property_url
    assert_response :success
  end

  test "should create auth_property" do
    assert_difference('AuthProperty.count') do
      post auth_properties_url, params: { auth_property: { key: @auth_property.key, numValue: @auth_property.numValue, token: @auth_property.token, txtValue: @auth_property.txtValue } }
    end

    assert_redirected_to auth_property_url(AuthProperty.last)
  end

  test "should show auth_property" do
    get auth_property_url(@auth_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_auth_property_url(@auth_property)
    assert_response :success
  end

  test "should update auth_property" do
    patch auth_property_url(@auth_property), params: { auth_property: { key: @auth_property.key, numValue: @auth_property.numValue, token: @auth_property.token, txtValue: @auth_property.txtValue } }
    assert_redirected_to auth_property_url(@auth_property)
  end

  test "should destroy auth_property" do
    assert_difference('AuthProperty.count', -1) do
      delete auth_property_url(@auth_property)
    end

    assert_redirected_to auth_properties_url
  end
end
