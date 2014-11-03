require 'test_helper'

class PetSizesControllerTest < ActionController::TestCase
  setup do
    @pet_size = pet_sizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pet_sizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pet_size" do
    assert_difference('PetSize.count') do
      post :create, pet_size: { pet_size: @pet_size.pet_size }
    end

    assert_redirected_to pet_size_path(assigns(:pet_size))
  end

  test "should show pet_size" do
    get :show, id: @pet_size
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pet_size
    assert_response :success
  end

  test "should update pet_size" do
    put :update, id: @pet_size, pet_size: { pet_size: @pet_size.pet_size }
    assert_redirected_to pet_size_path(assigns(:pet_size))
  end

  test "should destroy pet_size" do
    assert_difference('PetSize.count', -1) do
      delete :destroy, id: @pet_size
    end

    assert_redirected_to pet_sizes_path
  end
end
