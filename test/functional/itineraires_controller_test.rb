require 'test_helper'

class ItinerairesControllerTest < ActionController::TestCase
  setup do
    @itineraire = itineraires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itineraires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itineraire" do
    assert_difference('Itineraire.count') do
      post :create, :itineraire => { :DateArriveeLieuMission => @itineraire.DateArriveeLieuMission, :DateHeureDepartLieuMission => @itineraire.DateHeureDepartLieuMission, :DateHeureDepartResidence => @itineraire.DateHeureDepartResidence, :DateHeureRetourResidence => @itineraire.DateHeureRetourResidence, :distance => @itineraire.distance, :montant => @itineraire.montant, :rembourse => @itineraire.rembourse }
    end

    assert_redirected_to itineraire_path(assigns(:itineraire))
  end

  test "should show itineraire" do
    get :show, :id => @itineraire
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @itineraire
    assert_response :success
  end

  test "should update itineraire" do
    put :update, :id => @itineraire, :itineraire => { :DateArriveeLieuMission => @itineraire.DateArriveeLieuMission, :DateHeureDepartLieuMission => @itineraire.DateHeureDepartLieuMission, :DateHeureDepartResidence => @itineraire.DateHeureDepartResidence, :DateHeureRetourResidence => @itineraire.DateHeureRetourResidence, :distance => @itineraire.distance, :montant => @itineraire.montant, :rembourse => @itineraire.rembourse }
    assert_redirected_to itineraire_path(assigns(:itineraire))
  end

  test "should destroy itineraire" do
    assert_difference('Itineraire.count', -1) do
      delete :destroy, :id => @itineraire
    end

    assert_redirected_to itineraires_path
  end
end
