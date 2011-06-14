require 'test_helper'

class ResourceStocksControllerTest < ActionController::TestCase
  setup do
    @resource_stock = resource_stocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resource_stocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resource_stock" do
    assert_difference('ResourceStock.count') do
      post :create, :resource_stock => @resource_stock.attributes
    end

    assert_redirected_to resource_stock_path(assigns(:resource_stock))
  end

  test "should show resource_stock" do
    get :show, :id => @resource_stock.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @resource_stock.to_param
    assert_response :success
  end

  test "should update resource_stock" do
    put :update, :id => @resource_stock.to_param, :resource_stock => @resource_stock.attributes
    assert_redirected_to resource_stock_path(assigns(:resource_stock))
  end

  test "should destroy resource_stock" do
    assert_difference('ResourceStock.count', -1) do
      delete :destroy, :id => @resource_stock.to_param
    end

    assert_redirected_to resource_stocks_path
  end
end
