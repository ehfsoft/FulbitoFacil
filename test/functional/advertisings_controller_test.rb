require 'test_helper'

class AdvertisingsControllerTest < ActionController::TestCase
  setup do
    @advertising = advertisings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advertisings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advertising" do
    assert_difference('Advertising.count') do
      post :create, advertising: @advertising.attributes
    end

    assert_redirected_to advertising_path(assigns(:advertising))
  end

  test "should show advertising" do
    get :show, id: @advertising.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advertising.to_param
    assert_response :success
  end

  test "should update advertising" do
    put :update, id: @advertising.to_param, advertising: @advertising.attributes
    assert_redirected_to advertising_path(assigns(:advertising))
  end

  test "should destroy advertising" do
    assert_difference('Advertising.count', -1) do
      delete :destroy, id: @advertising.to_param
    end

    assert_redirected_to advertisings_path
  end
end
