require 'test_helper'

class FraisRepasControllerTest < ActionController::TestCase
  setup do
    @frais_repa = frais_repas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frais_repas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frais_repa" do
    assert_difference('FraisRepa.count') do
      post :create, :frais_repa => { :NbJustificatifsRestauAdmin => @frais_repa.NbJustificatifsRestauAdmin, :autresFraisRestaus => @frais_repa.autresFraisRestaus, :montantAutres => @frais_repa.montantAutres, :montantRestauAdmin => @frais_repa.montantRestauAdmin, :nbJustificatifsAutres => @frais_repa.nbJustificatifsAutres, :nbRepasDansRestaurantAdmin => @frais_repa.nbRepasDansRestaurantAdmin, :nbRepasGratuits => @frais_repa.nbRepasGratuits, :rembourse => @frais_repa.rembourse, :rembourseRestauAdmin => @frais_repa.rembourseRestauAdmin }
    end

    assert_redirected_to frais_repa_path(assigns(:frais_repa))
  end

  test "should show frais_repa" do
    get :show, :id => @frais_repa
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @frais_repa
    assert_response :success
  end

  test "should update frais_repa" do
    put :update, :id => @frais_repa, :frais_repa => { :NbJustificatifsRestauAdmin => @frais_repa.NbJustificatifsRestauAdmin, :autresFraisRestaus => @frais_repa.autresFraisRestaus, :montantAutres => @frais_repa.montantAutres, :montantRestauAdmin => @frais_repa.montantRestauAdmin, :nbJustificatifsAutres => @frais_repa.nbJustificatifsAutres, :nbRepasDansRestaurantAdmin => @frais_repa.nbRepasDansRestaurantAdmin, :nbRepasGratuits => @frais_repa.nbRepasGratuits, :rembourse => @frais_repa.rembourse, :rembourseRestauAdmin => @frais_repa.rembourseRestauAdmin }
    assert_redirected_to frais_repa_path(assigns(:frais_repa))
  end

  test "should destroy frais_repa" do
    assert_difference('FraisRepa.count', -1) do
      delete :destroy, :id => @frais_repa
    end

    assert_redirected_to frais_repas_path
  end
end
