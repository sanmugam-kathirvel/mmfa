require 'test_helper'

class DoctorSpelsControllerTest < ActionController::TestCase
  setup do
    @doctor_spel = doctor_spels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctor_spels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor_spel" do
    assert_difference('DoctorSpel.count') do
      post :create, :doctor_spel => @doctor_spel.attributes
    end

    assert_redirected_to doctor_spel_path(assigns(:doctor_spel))
  end

  test "should show doctor_spel" do
    get :show, :id => @doctor_spel.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @doctor_spel.to_param
    assert_response :success
  end

  test "should update doctor_spel" do
    put :update, :id => @doctor_spel.to_param, :doctor_spel => @doctor_spel.attributes
    assert_redirected_to doctor_spel_path(assigns(:doctor_spel))
  end

  test "should destroy doctor_spel" do
    assert_difference('DoctorSpel.count', -1) do
      delete :destroy, :id => @doctor_spel.to_param
    end

    assert_redirected_to doctor_spels_path
  end
end
