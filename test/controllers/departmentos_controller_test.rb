require 'test_helper'

class DepartmentosControllerTest < ActionController::TestCase
  setup do
    @departmento = departmentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:departmentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create departmento" do
    assert_difference('Departmento.count') do
      post :create, departmento: { codigo_departamento: @departmento.codigo_departamento, nombre_departamento: @departmento.nombre_departamento }
    end

    assert_redirected_to departmento_path(assigns(:departmento))
  end

  test "should show departmento" do
    get :show, id: @departmento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @departmento
    assert_response :success
  end

  test "should update departmento" do
    patch :update, id: @departmento, departmento: { codigo_departamento: @departmento.codigo_departamento, nombre_departamento: @departmento.nombre_departamento }
    assert_redirected_to departmento_path(assigns(:departmento))
  end

  test "should destroy departmento" do
    assert_difference('Departmento.count', -1) do
      delete :destroy, id: @departmento
    end

    assert_redirected_to departmentos_path
  end
end
