require 'test_helper'

class ClassificationDoctorsControllerTest < ActionController::TestCase
  setup do
    @classification_doctor = classification_doctors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classification_doctors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classification_doctor" do
    assert_difference('ClassificationDoctor.count') do
      post :create, :classification_doctor => @classification_doctor.attributes
    end

    assert_redirected_to classification_doctor_path(assigns(:classification_doctor))
  end

  test "should show classification_doctor" do
    get :show, :id => @classification_doctor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @classification_doctor.to_param
    assert_response :success
  end

  test "should update classification_doctor" do
    put :update, :id => @classification_doctor.to_param, :classification_doctor => @classification_doctor.attributes
    assert_redirected_to classification_doctor_path(assigns(:classification_doctor))
  end

  test "should destroy classification_doctor" do
    assert_difference('ClassificationDoctor.count', -1) do
      delete :destroy, :id => @classification_doctor.to_param
    end

    assert_redirected_to classification_doctors_path
  end
end
