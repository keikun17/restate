require 'test_helper'

class PropertyTypesControllerTest < ActionController::TestCase
  setup do
    @property_type = property_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:property_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property_type" do
    assert_difference('PropertyType.count') do
      post :create, :property_type => @property_type.attributes
    end

    assert_redirected_to property_type_path(assigns(:property_type))
  end

  test "should show property_type" do
    get :show, :id => @property_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @property_type.to_param
    assert_response :success
  end

  test "should update property_type" do
    put :update, :id => @property_type.to_param, :property_type => @property_type.attributes
    assert_redirected_to property_type_path(assigns(:property_type))
  end

  test "should destroy property_type" do
    assert_difference('PropertyType.count', -1) do
      delete :destroy, :id => @property_type.to_param
    end

    assert_redirected_to property_types_path
  end
end
