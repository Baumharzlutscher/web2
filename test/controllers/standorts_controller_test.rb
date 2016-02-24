require 'test_helper'

class StandortsControllerTest < ActionController::TestCase
  setup do
    @standort = standorts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:standorts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create standort" do
    assert_difference('Standort.count') do
      post :create, standort: { Adresse: @standort.Adresse, Oeffnungszeiten: @standort.Oeffnungszeiten }
    end

    assert_redirected_to standort_path(assigns(:standort))
  end

  test "should show standort" do
    get :show, id: @standort
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @standort
    assert_response :success
  end

  test "should update standort" do
    patch :update, id: @standort, standort: { Adresse: @standort.Adresse, Oeffnungszeiten: @standort.Oeffnungszeiten }
    assert_redirected_to standort_path(assigns(:standort))
  end

  test "should destroy standort" do
    assert_difference('Standort.count', -1) do
      delete :destroy, id: @standort
    end

    assert_redirected_to standorts_path
  end
end
