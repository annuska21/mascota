require 'test_helper'

class HairTypesControllerTest < ActionController::TestCase
  setup do
    @hair_type = hair_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hair_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hair_type" do
    assert_difference('HairType.count') do
      post :create, hair_type: { name: @hair_type.name }
    end

    assert_redirected_to hair_type_path(assigns(:hair_type))
  end

  test "should show hair_type" do
    get :show, id: @hair_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hair_type
    assert_response :success
  end

  test "should update hair_type" do
    put :update, id: @hair_type, hair_type: { name: @hair_type.name }
    assert_redirected_to hair_type_path(assigns(:hair_type))
  end

  test "should destroy hair_type" do
    assert_difference('HairType.count', -1) do
      delete :destroy, id: @hair_type
    end

    assert_redirected_to hair_types_path
  end
end
