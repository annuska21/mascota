require 'test_helper'

class SheltersControllerTest < ActionController::TestCase
  setup do
    @shelter = shelters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shelters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shelter" do
    assert_difference('Shelter.count') do
      post :create, shelter: { acogida: @shelter.acogida, calle: @shelter.calle, cp: @shelter.cp, descripcion_asociacion: @shelter.descripcion_asociacion, detalles_acogida: @shelter.detalles_acogida, detalles_voluntariado: @shelter.detalles_voluntariado, email: @shelter.email, informacion_donaciones: @shelter.informacion_donaciones, nombre: @shelter.nombre, password: @shelter.password, provincia: @shelter.provincia, requisitos_adopcion: @shelter.requisitos_adopcion, telefono: @shelter.telefono, usuario: @shelter.usuario, voluntariado: @shelter.voluntariado, web: @shelter.web }
    end

    assert_redirected_to shelter_path(assigns(:shelter))
  end

  test "should show shelter" do
    get :show, id: @shelter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shelter
    assert_response :success
  end

  test "should update shelter" do
    put :update, id: @shelter, shelter: { acogida: @shelter.acogida, calle: @shelter.calle, cp: @shelter.cp, descripcion_asociacion: @shelter.descripcion_asociacion, detalles_acogida: @shelter.detalles_acogida, detalles_voluntariado: @shelter.detalles_voluntariado, email: @shelter.email, informacion_donaciones: @shelter.informacion_donaciones, nombre: @shelter.nombre, password: @shelter.password, provincia: @shelter.provincia, requisitos_adopcion: @shelter.requisitos_adopcion, telefono: @shelter.telefono, usuario: @shelter.usuario, voluntariado: @shelter.voluntariado, web: @shelter.web }
    assert_redirected_to shelter_path(assigns(:shelter))
  end

  test "should destroy shelter" do
    assert_difference('Shelter.count', -1) do
      delete :destroy, id: @shelter
    end

    assert_redirected_to shelters_path
  end
end
