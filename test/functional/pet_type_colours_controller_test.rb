require 'test_helper'

class PetTypeColoursControllerTest < ActionController::TestCase
  setup do
    @pet_type_colour = pet_type_colours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pet_type_colours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pet_type_colour" do
    assert_difference('PetTypeColour.count') do
      post :create, pet_type_colour: { color: @pet_type_colour.color, descripcion: @pet_type_colour.descripcion, pet_type_id: @pet_type_colour.pet_type_id }
    end

    assert_redirected_to pet_type_colour_path(assigns(:pet_type_colour))
  end

  test "should show pet_type_colour" do
    get :show, id: @pet_type_colour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pet_type_colour
    assert_response :success
  end

  test "should update pet_type_colour" do
    put :update, id: @pet_type_colour, pet_type_colour: { color: @pet_type_colour.color, descripcion: @pet_type_colour.descripcion, pet_type_id: @pet_type_colour.pet_type_id }
    assert_redirected_to pet_type_colour_path(assigns(:pet_type_colour))
  end

  test "should destroy pet_type_colour" do
    assert_difference('PetTypeColour.count', -1) do
      delete :destroy, id: @pet_type_colour
    end

    assert_redirected_to pet_type_colours_path
  end
end
