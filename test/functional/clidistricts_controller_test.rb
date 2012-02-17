require 'test_helper'

class ClidistrictsControllerTest < ActionController::TestCase
  setup do
    @clidistrict = clidistricts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clidistricts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clidistrict" do
    assert_difference('Clidistrict.count') do
      post :create, clidistrict: @clidistrict.attributes
    end

    assert_redirected_to clidistrict_path(assigns(:clidistrict))
  end

  test "should show clidistrict" do
    get :show, id: @clidistrict.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clidistrict.to_param
    assert_response :success
  end

  test "should update clidistrict" do
    put :update, id: @clidistrict.to_param, clidistrict: @clidistrict.attributes
    assert_redirected_to clidistrict_path(assigns(:clidistrict))
  end

  test "should destroy clidistrict" do
    assert_difference('Clidistrict.count', -1) do
      delete :destroy, id: @clidistrict.to_param
    end

    assert_redirected_to clidistricts_path
  end
end
