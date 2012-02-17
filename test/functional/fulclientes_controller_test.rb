require 'test_helper'

class FulclientesControllerTest < ActionController::TestCase
  setup do
    @fulcliente = fulclientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fulclientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fulcliente" do
    assert_difference('Fulcliente.count') do
      post :create, fulcliente: @fulcliente.attributes
    end

    assert_redirected_to fulcliente_path(assigns(:fulcliente))
  end

  test "should show fulcliente" do
    get :show, id: @fulcliente.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fulcliente.to_param
    assert_response :success
  end

  test "should update fulcliente" do
    put :update, id: @fulcliente.to_param, fulcliente: @fulcliente.attributes
    assert_redirected_to fulcliente_path(assigns(:fulcliente))
  end

  test "should destroy fulcliente" do
    assert_difference('Fulcliente.count', -1) do
      delete :destroy, id: @fulcliente.to_param
    end

    assert_redirected_to fulclientes_path
  end
end
