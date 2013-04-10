require 'test_helper'

class VehiculePersosControllerTest < ActionController::TestCase
  setup do
    @vehicule_perso = vehicule_persos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicule_persos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicule_perso" do
    assert_difference('VehiculePerso.count') do
      post :create, :vehicule_perso => { :DateAutorisationAnnuelleDUtilisation => @vehicule_perso.DateAutorisationAnnuelleDUtilisation, :academie => @vehicule_perso.academie, :departement => @vehicule_perso.departement, :numMineralogique => @vehicule_perso.numMineralogique, :puissanceVehicule => @vehicule_perso.puissanceVehicule }
    end

    assert_redirected_to vehicule_perso_path(assigns(:vehicule_perso))
  end

  test "should show vehicule_perso" do
    get :show, :id => @vehicule_perso
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @vehicule_perso
    assert_response :success
  end

  test "should update vehicule_perso" do
    put :update, :id => @vehicule_perso, :vehicule_perso => { :DateAutorisationAnnuelleDUtilisation => @vehicule_perso.DateAutorisationAnnuelleDUtilisation, :academie => @vehicule_perso.academie, :departement => @vehicule_perso.departement, :numMineralogique => @vehicule_perso.numMineralogique, :puissanceVehicule => @vehicule_perso.puissanceVehicule }
    assert_redirected_to vehicule_perso_path(assigns(:vehicule_perso))
  end

  test "should destroy vehicule_perso" do
    assert_difference('VehiculePerso.count', -1) do
      delete :destroy, :id => @vehicule_perso
    end

    assert_redirected_to vehicule_persos_path
  end
end
