require 'test_helper'

class RootsControllerTest < ActionController::TestCase
  setup do
    @root = roots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create root" do
    assert_difference('Root.count') do
      post :create, :root => @root.attributes
    end

    assert_redirected_to root_path(assigns(:root))
  end

  test "should show root" do
    get :show, :id => @root.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @root.to_param
    assert_response :success
  end

  test "should update root" do
    put :update, :id => @root.to_param, :root => @root.attributes
    assert_redirected_to root_path(assigns(:root))
  end

  test "should destroy root" do
    assert_difference('Root.count', -1) do
      delete :destroy, :id => @root.to_param
    end

    assert_redirected_to roots_path
  end
end
