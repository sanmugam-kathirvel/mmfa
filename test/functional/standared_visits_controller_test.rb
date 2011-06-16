require 'test_helper'

class StandaredVisitsControllerTest < ActionController::TestCase
  setup do
    @standared_visit = standared_visits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:standared_visits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create standared_visit" do
    assert_difference('StandaredVisit.count') do
      post :create, :standared_visit => @standared_visit.attributes
    end

    assert_redirected_to standared_visit_path(assigns(:standared_visit))
  end

  test "should show standared_visit" do
    get :show, :id => @standared_visit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @standared_visit.to_param
    assert_response :success
  end

  test "should update standared_visit" do
    put :update, :id => @standared_visit.to_param, :standared_visit => @standared_visit.attributes
    assert_redirected_to standared_visit_path(assigns(:standared_visit))
  end

  test "should destroy standared_visit" do
    assert_difference('StandaredVisit.count', -1) do
      delete :destroy, :id => @standared_visit.to_param
    end

    assert_redirected_to standared_visits_path
  end
end
