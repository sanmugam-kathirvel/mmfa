require 'test_helper'

class Admin::HeadquatorsControllerTest < ActionController::TestCase
  setup do
    @admin_headquator = admin_headquators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_headquators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_headquator" do
    assert_difference('Admin::Headquator.count') do
      post :create, :admin_headquator => @admin_headquator.attributes
    end

    assert_redirected_to admin_headquator_path(assigns(:admin_headquator))
  end

  test "should show admin_headquator" do
    get :show, :id => @admin_headquator.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @admin_headquator.to_param
    assert_response :success
  end

  test "should update admin_headquator" do
    put :update, :id => @admin_headquator.to_param, :admin_headquator => @admin_headquator.attributes
    assert_redirected_to admin_headquator_path(assigns(:admin_headquator))
  end

  test "should destroy admin_headquator" do
    assert_difference('Admin::Headquator.count', -1) do
      delete :destroy, :id => @admin_headquator.to_param
    end

    assert_redirected_to admin_headquators_path
  end
end
