require 'test_helper'

class SeedsControllerTest < ActionController::TestCase
  setup do
    @seed = seeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seed" do
    assert_difference('Seed.count') do
      post :create, :seed => @seed.attributes
    end

    assert_redirected_to seed_path(assigns(:seed))
  end

  test "should show seed" do
    get :show, :id => @seed.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @seed.to_param
    assert_response :success
  end

  test "should update seed" do
    put :update, :id => @seed.to_param, :seed => @seed.attributes
    assert_redirected_to seed_path(assigns(:seed))
  end

  test "should destroy seed" do
    assert_difference('Seed.count', -1) do
      delete :destroy, :id => @seed.to_param
    end

    assert_redirected_to seeds_path
  end
end
