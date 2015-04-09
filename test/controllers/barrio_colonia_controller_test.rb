require 'test_helper'

class BarrioColoniaControllerTest < ActionController::TestCase
  setup do
    @barrio_colonium = barrio_colonia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barrio_colonia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barrio_colonium" do
    assert_difference('BarrioColonium.count') do
      post :create, barrio_colonium: { municipio_id: @barrio_colonium.municipio_id, nombre_colonia: @barrio_colonium.nombre_colonia, tipo: @barrio_colonium.tipo }
    end

    assert_redirected_to barrio_colonium_path(assigns(:barrio_colonium))
  end

  test "should show barrio_colonium" do
    get :show, id: @barrio_colonium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barrio_colonium
    assert_response :success
  end

  test "should update barrio_colonium" do
    patch :update, id: @barrio_colonium, barrio_colonium: { municipio_id: @barrio_colonium.municipio_id, nombre_colonia: @barrio_colonium.nombre_colonia, tipo: @barrio_colonium.tipo }
    assert_redirected_to barrio_colonium_path(assigns(:barrio_colonium))
  end

  test "should destroy barrio_colonium" do
    assert_difference('BarrioColonium.count', -1) do
      delete :destroy, id: @barrio_colonium
    end

    assert_redirected_to barrio_colonia_path
  end
end
