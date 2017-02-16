require 'test_helper'

class ServicePropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_property = service_properties(:one)
  end

  test "should get index" do
    get service_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_service_property_url
    assert_response :success
  end

  test "should create service_property" do
    assert_difference('ServiceProperty.count') do
      post service_properties_url, params: { service_property: { comment: @service_property.comment, key2: @service_property.key2, key: @service_property.key, numVal: @service_property.numVal, strVal: @service_property.strVal } }
    end

    assert_redirected_to service_property_url(ServiceProperty.last)
  end

  test "should show service_property" do
    get service_property_url(@service_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_property_url(@service_property)
    assert_response :success
  end

  test "should update service_property" do
    patch service_property_url(@service_property), params: { service_property: { comment: @service_property.comment, key2: @service_property.key2, key: @service_property.key, numVal: @service_property.numVal, strVal: @service_property.strVal } }
    assert_redirected_to service_property_url(@service_property)
  end

  test "should destroy service_property" do
    assert_difference('ServiceProperty.count', -1) do
      delete service_property_url(@service_property)
    end

    assert_redirected_to service_properties_url
  end
end
