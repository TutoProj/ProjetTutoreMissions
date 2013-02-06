require 'test_helper'

class FraisHebergementsControllerTest < ActionController::TestCase
  setup do
    @frais_hebergement = frais_hebergements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frais_hebergements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frais_hebergement" do
    assert_difference('FraisHebergement.count') do
      post :create, :frais_hebergement => { :logeDansAutreLogement => @frais_hebergement.logeDansAutreLogement, :montant => @frais_hebergement.montant, :nbJustificatifs => @frais_hebergement.nbJustificatifs, :nbNuiteeAvecFrais => @frais_hebergement.nbNuiteeAvecFrais, :rembourse => @frais_hebergement.rembourse }
    end

    assert_redirected_to frais_hebergement_path(assigns(:frais_hebergement))
  end

  test "should show frais_hebergement" do
    get :show, :id => @frais_hebergement
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @frais_hebergement
    assert_response :success
  end

  test "should update frais_hebergement" do
    put :update, :id => @frais_hebergement, :frais_hebergement => { :logeDansAutreLogement => @frais_hebergement.logeDansAutreLogement, :montant => @frais_hebergement.montant, :nbJustificatifs => @frais_hebergement.nbJustificatifs, :nbNuiteeAvecFrais => @frais_hebergement.nbNuiteeAvecFrais, :rembourse => @frais_hebergement.rembourse }
    assert_redirected_to frais_hebergement_path(assigns(:frais_hebergement))
  end

  test "should destroy frais_hebergement" do
    assert_difference('FraisHebergement.count', -1) do
      delete :destroy, :id => @frais_hebergement
    end

    assert_redirected_to frais_hebergements_path
  end
end
