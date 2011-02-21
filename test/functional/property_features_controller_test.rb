require 'test_helper'

class PropertyFeaturesControllerTest < ActionController::TestCase
  setup do
    @property_feature = property_features(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:property_features)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property_feature" do
    assert_difference('PropertyFeature.count') do
      post :create, :property_feature => @property_feature.attributes
    end

    assert_redirected_to property_feature_path(assigns(:property_feature))
  end

  test "should show property_feature" do
    get :show, :id => @property_feature.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @property_feature.to_param
    assert_response :success
  end

  test "should update property_feature" do
    put :update, :id => @property_feature.to_param, :property_feature => @property_feature.attributes
    assert_redirected_to property_feature_path(assigns(:property_feature))
  end

  test "should destroy property_feature" do
    assert_difference('PropertyFeature.count', -1) do
      delete :destroy, :id => @property_feature.to_param
    end

    assert_redirected_to property_features_path
  end
end
