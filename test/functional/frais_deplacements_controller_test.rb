require 'test_helper'

class FraisDeplacementsControllerTest < ActionController::TestCase
  setup do
    @frais_deplacement = frais_deplacements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frais_deplacements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frais_deplacement" do
    assert_difference('FraisDeplacement.count') do
      post :create, :frais_deplacement => { :demandeAvance => @frais_deplacement.demandeAvance, :forfait => @frais_deplacement.forfait, :montant => @frais_deplacement.montant, :regularisationDAvance => @frais_deplacement.regularisationDAvance }
    end

    assert_redirected_to frais_deplacement_path(assigns(:frais_deplacement))
  end

  test "should show frais_deplacement" do
    get :show, :id => @frais_deplacement
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @frais_deplacement
    assert_response :success
  end

  test "should update frais_deplacement" do
    put :update, :id => @frais_deplacement, :frais_deplacement => { :demandeAvance => @frais_deplacement.demandeAvance, :forfait => @frais_deplacement.forfait, :montant => @frais_deplacement.montant, :regularisationDAvance => @frais_deplacement.regularisationDAvance }
    assert_redirected_to frais_deplacement_path(assigns(:frais_deplacement))
  end

  test "should destroy frais_deplacement" do
    assert_difference('FraisDeplacement.count', -1) do
      delete :destroy, :id => @frais_deplacement
    end

    assert_redirected_to frais_deplacements_path
  end
end
