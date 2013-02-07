require 'test_helper'

class MoyenTransportsControllerTest < ActionController::TestCase
  setup do
    @moyen_transport = moyen_transports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moyen_transports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moyen_transport" do
    assert_difference('MoyenTransport.count') do
      post :create, :moyen_transport => { :autobus => @moyen_transport.autobus, :avion => @moyen_transport.avion, :classe => @moyen_transport.classe, :couchette => @moyen_transport.couchette, :demandeAutorisationPonctuelleVehicule => @moyen_transport.demandeAutorisationPonctuelleVehicule, :fraisAutoroute => @moyen_transport.fraisAutoroute, :metro => @moyen_transport.metro, :missionAvecTransport => @moyen_transport.missionAvecTransport, :parking => @moyen_transport.parking, :parkingAeroport => @moyen_transport.parkingAeroport, :parkingGare => @moyen_transport.parkingGare, :rer => @moyen_transport.rer, :reservation => @moyen_transport.reservation, :supplements => @moyen_transport.supplements, :taxi => @moyen_transport.taxi, :train => @moyen_transport.train, :tramway => @moyen_transport.tramway, :vehiculeAdmin => @moyen_transport.vehiculeAdmin, :vehiculeLoue => @moyen_transport.vehiculeLoue, :vehiculePerso => @moyen_transport.vehiculePerso, :wagonLit => @moyen_transport.wagonLit }
    end

    assert_redirected_to moyen_transport_path(assigns(:moyen_transport))
  end

  test "should show moyen_transport" do
    get :show, :id => @moyen_transport
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @moyen_transport
    assert_response :success
  end

  test "should update moyen_transport" do
    put :update, :id => @moyen_transport, :moyen_transport => { :autobus => @moyen_transport.autobus, :avion => @moyen_transport.avion, :classe => @moyen_transport.classe, :couchette => @moyen_transport.couchette, :demandeAutorisationPonctuelleVehicule => @moyen_transport.demandeAutorisationPonctuelleVehicule, :fraisAutoroute => @moyen_transport.fraisAutoroute, :metro => @moyen_transport.metro, :missionAvecTransport => @moyen_transport.missionAvecTransport, :parking => @moyen_transport.parking, :parkingAeroport => @moyen_transport.parkingAeroport, :parkingGare => @moyen_transport.parkingGare, :rer => @moyen_transport.rer, :reservation => @moyen_transport.reservation, :supplements => @moyen_transport.supplements, :taxi => @moyen_transport.taxi, :train => @moyen_transport.train, :tramway => @moyen_transport.tramway, :vehiculeAdmin => @moyen_transport.vehiculeAdmin, :vehiculeLoue => @moyen_transport.vehiculeLoue, :vehiculePerso => @moyen_transport.vehiculePerso, :wagonLit => @moyen_transport.wagonLit }
    assert_redirected_to moyen_transport_path(assigns(:moyen_transport))
  end

  test "should destroy moyen_transport" do
    assert_difference('MoyenTransport.count', -1) do
      delete :destroy, :id => @moyen_transport
    end

    assert_redirected_to moyen_transports_path
  end
end
