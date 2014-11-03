require 'test_helper'

class PetTypeBreedsControllerTest < ActionController::TestCase
  setup do
    @pet_type_breed = pet_type_breeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pet_type_breeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pet_type_breed" do
    assert_difference('PetTypeBreed.count') do
      post :create, pet_type_breed: { pet_type_id: @pet_type_breed.pet_type_id, raza: @pet_type_breed.raza }
    end

    assert_redirected_to pet_type_breed_path(assigns(:pet_type_breed))
  end

  test "should show pet_type_breed" do
    get :show, id: @pet_type_breed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pet_type_breed
    assert_response :success
  end

  test "should update pet_type_breed" do
    put :update, id: @pet_type_breed, pet_type_breed: { pet_type_id: @pet_type_breed.pet_type_id, raza: @pet_type_breed.raza }
    assert_redirected_to pet_type_breed_path(assigns(:pet_type_breed))
  end

  test "should destroy pet_type_breed" do
    assert_difference('PetTypeBreed.count', -1) do
      delete :destroy, id: @pet_type_breed
    end

    assert_redirected_to pet_type_breeds_path
  end
end
