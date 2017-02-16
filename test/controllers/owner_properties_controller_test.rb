require 'test_helper'

class OwnerPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @owner_property = owner_properties(:one)
  end

  test "should get index" do
    get owner_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_owner_property_url
    assert_response :success
  end

  test "should create owner_property" do
    assert_difference('OwnerProperty.count') do
      post owner_properties_url, params: { owner_property: { key: @owner_property.key, num_val: @owner_property.num_val, str_val: @owner_property.str_val } }
    end

    assert_redirected_to owner_property_url(OwnerProperty.last)
  end

  test "should show owner_property" do
    get owner_property_url(@owner_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_owner_property_url(@owner_property)
    assert_response :success
  end

  test "should update owner_property" do
    patch owner_property_url(@owner_property), params: { owner_property: { key: @owner_property.key, num_val: @owner_property.num_val, str_val: @owner_property.str_val } }
    assert_redirected_to owner_property_url(@owner_property)
  end

  test "should destroy owner_property" do
    assert_difference('OwnerProperty.count', -1) do
      delete owner_property_url(@owner_property)
    end

    assert_redirected_to owner_properties_url
  end
end
