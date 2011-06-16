require 'test_helper'

class MsrplannersControllerTest < ActionController::TestCase
  setup do
    @msrplanner = msrplanners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:msrplanners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create msrplanner" do
    assert_difference('Msrplanner.count') do
      post :create, :msrplanner => @msrplanner.attributes
    end

    assert_redirected_to msrplanner_path(assigns(:msrplanner))
  end

  test "should show msrplanner" do
    get :show, :id => @msrplanner.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @msrplanner.to_param
    assert_response :success
  end

  test "should update msrplanner" do
    put :update, :id => @msrplanner.to_param, :msrplanner => @msrplanner.attributes
    assert_redirected_to msrplanner_path(assigns(:msrplanner))
  end

  test "should destroy msrplanner" do
    assert_difference('Msrplanner.count', -1) do
      delete :destroy, :id => @msrplanner.to_param
    end

    assert_redirected_to msrplanners_path
  end
end
