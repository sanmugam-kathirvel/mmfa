require 'test_helper'

class TourprogramsControllerTest < ActionController::TestCase
  setup do
    @tourprogram = tourprograms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tourprograms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tourprogram" do
    assert_difference('Tourprogram.count') do
      post :create, :tourprogram => @tourprogram.attributes
    end

    assert_redirected_to tourprogram_path(assigns(:tourprogram))
  end

  test "should show tourprogram" do
    get :show, :id => @tourprogram.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tourprogram.to_param
    assert_response :success
  end

  test "should update tourprogram" do
    put :update, :id => @tourprogram.to_param, :tourprogram => @tourprogram.attributes
    assert_redirected_to tourprogram_path(assigns(:tourprogram))
  end

  test "should destroy tourprogram" do
    assert_difference('Tourprogram.count', -1) do
      delete :destroy, :id => @tourprogram.to_param
    end

    assert_redirected_to tourprograms_path
  end
end
