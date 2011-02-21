require 'test_helper'

class CondosControllerTest < ActionController::TestCase
  setup do
    @condo = condos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:condos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create condo" do
    assert_difference('Condo.count') do
      post :create, :condo => @condo.attributes
    end

    assert_redirected_to condo_path(assigns(:condo))
  end

  test "should show condo" do
    get :show, :id => @condo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @condo.to_param
    assert_response :success
  end

  test "should update condo" do
    put :update, :id => @condo.to_param, :condo => @condo.attributes
    assert_redirected_to condo_path(assigns(:condo))
  end

  test "should destroy condo" do
    assert_difference('Condo.count', -1) do
      delete :destroy, :id => @condo.to_param
    end

    assert_redirected_to condos_path
  end
end
