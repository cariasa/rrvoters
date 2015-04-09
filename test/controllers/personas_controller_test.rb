require 'test_helper'

class PersonasControllerTest < ActionController::TestCase
  setup do
    @persona = personas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create persona" do
    assert_difference('Persona.count') do
      post :create, persona: { apellidos_persona: @persona.apellidos_persona, barrio_colonia_id: @persona.barrio_colonia_id, email_persona: @persona.email_persona, identidad_persona: @persona.identidad_persona, nombres_persona: @persona.nombres_persona, telefono_persona: @persona.telefono_persona }
    end

    assert_redirected_to persona_path(assigns(:persona))
  end

  test "should show persona" do
    get :show, id: @persona
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @persona
    assert_response :success
  end

  test "should update persona" do
    patch :update, id: @persona, persona: { apellidos_persona: @persona.apellidos_persona, barrio_colonia_id: @persona.barrio_colonia_id, email_persona: @persona.email_persona, identidad_persona: @persona.identidad_persona, nombres_persona: @persona.nombres_persona, telefono_persona: @persona.telefono_persona }
    assert_redirected_to persona_path(assigns(:persona))
  end

  test "should destroy persona" do
    assert_difference('Persona.count', -1) do
      delete :destroy, id: @persona
    end

    assert_redirected_to personas_path
  end
end
