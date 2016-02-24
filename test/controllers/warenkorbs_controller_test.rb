require 'test_helper'

class WarenkorbsControllerTest < ActionController::TestCase
  setup do
    @warenkorb = warenkorbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:warenkorbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create warenkorb" do
    assert_difference('Warenkorb.count') do
      post :create, warenkorb: { Anzahl: @warenkorb.Anzahl, Gesamtbetrag: @warenkorb.Gesamtbetrag, Rabattcode: @warenkorb.Rabattcode }
    end

    assert_redirected_to warenkorb_path(assigns(:warenkorb))
  end

  test "should show warenkorb" do
    get :show, id: @warenkorb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @warenkorb
    assert_response :success
  end

  test "should update warenkorb" do
    patch :update, id: @warenkorb, warenkorb: { Anzahl: @warenkorb.Anzahl, Gesamtbetrag: @warenkorb.Gesamtbetrag, Rabattcode: @warenkorb.Rabattcode }
    assert_redirected_to warenkorb_path(assigns(:warenkorb))
  end

  test "should destroy warenkorb" do
    assert_difference('Warenkorb.count', -1) do
      delete :destroy, id: @warenkorb
    end

    assert_redirected_to warenkorbs_path
  end
end
