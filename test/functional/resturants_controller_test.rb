require 'test_helper'

class ResturantsControllerTest < ActionController::TestCase
  setup do
    @resturant = resturants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resturants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resturant" do
    assert_difference('Resturant.count') do
      post :create, :resturant => @resturant.attributes
    end

    assert_redirected_to resturant_path(assigns(:resturant))
  end

  test "should show resturant" do
    get :show, :id => @resturant.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @resturant.to_param
    assert_response :success
  end

  test "should update resturant" do
    put :update, :id => @resturant.to_param, :resturant => @resturant.attributes
    assert_redirected_to resturant_path(assigns(:resturant))
  end

  test "should destroy resturant" do
    assert_difference('Resturant.count', -1) do
      delete :destroy, :id => @resturant.to_param
    end

    assert_redirected_to resturants_path
  end
end
