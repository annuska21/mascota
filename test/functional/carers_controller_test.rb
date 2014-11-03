require 'test_helper'

class CarersControllerTest < ActionController::TestCase
  setup do
    @carer = carers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carer" do
    assert_difference('Carer.count') do
      post :create, carer: { apellidos: @carer.apellidos, calle: @carer.calle, comentarios: @carer.comentarios, cp: @carer.cp, email: @carer.email, localizar: @carer.localizar, nombre: @carer.nombre, provincia: @carer.provincia, telefono: @carer.telefono }
    end

    assert_redirected_to carer_path(assigns(:carer))
  end

  test "should show carer" do
    get :show, id: @carer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carer
    assert_response :success
  end

  test "should update carer" do
    put :update, id: @carer, carer: { apellidos: @carer.apellidos, calle: @carer.calle, comentarios: @carer.comentarios, cp: @carer.cp, email: @carer.email, localizar: @carer.localizar, nombre: @carer.nombre, provincia: @carer.provincia, telefono: @carer.telefono }
    assert_redirected_to carer_path(assigns(:carer))
  end

  test "should destroy carer" do
    assert_difference('Carer.count', -1) do
      delete :destroy, id: @carer
    end

    assert_redirected_to carers_path
  end
end
