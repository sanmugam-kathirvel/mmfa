require 'test_helper'

class TownsControllerTest < ActionController::TestCase
  setup do
    @town = towns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:towns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create town" do
    assert_difference('Town.count') do
      post :create, :town => @town.attributes
    end

    assert_redirected_to town_path(assigns(:town))
  end

  test "should show town" do
    get :show, :id => @town.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @town.to_param
    assert_response :success
  end

  test "should update town" do
    put :update, :id => @town.to_param, :town => @town.attributes
    assert_redirected_to town_path(assigns(:town))
  end

  test "should destroy town" do
    assert_difference('Town.count', -1) do
      delete :destroy, :id => @town.to_param
    end

    assert_redirected_to towns_path
  end
end
