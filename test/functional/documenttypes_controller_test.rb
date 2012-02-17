require 'test_helper'

class DocumenttypesControllerTest < ActionController::TestCase
  setup do
    @documenttype = documenttypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documenttypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create documenttype" do
    assert_difference('Documenttype.count') do
      post :create, documenttype: @documenttype.attributes
    end

    assert_redirected_to documenttype_path(assigns(:documenttype))
  end

  test "should show documenttype" do
    get :show, id: @documenttype.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @documenttype.to_param
    assert_response :success
  end

  test "should update documenttype" do
    put :update, id: @documenttype.to_param, documenttype: @documenttype.attributes
    assert_redirected_to documenttype_path(assigns(:documenttype))
  end

  test "should destroy documenttype" do
    assert_difference('Documenttype.count', -1) do
      delete :destroy, id: @documenttype.to_param
    end

    assert_redirected_to documenttypes_path
  end
end
