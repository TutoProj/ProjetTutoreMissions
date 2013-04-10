require 'test_helper'

class FraisAnnexesControllerTest < ActionController::TestCase
  setup do
    @frais_annex = frais_annexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frais_annexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frais_annex" do
    assert_difference('FraisAnnex.count') do
      post :create, :frais_annex => { :depense => @frais_annex.depense, :natureDepense => @frais_annex.natureDepense, :nbJustificatifs => @frais_annex.nbJustificatifs, :rembourse => @frais_annex.rembourse }
    end

    assert_redirected_to frais_annex_path(assigns(:frais_annex))
  end

  test "should show frais_annex" do
    get :show, :id => @frais_annex
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @frais_annex
    assert_response :success
  end

  test "should update frais_annex" do
    put :update, :id => @frais_annex, :frais_annex => { :depense => @frais_annex.depense, :natureDepense => @frais_annex.natureDepense, :nbJustificatifs => @frais_annex.nbJustificatifs, :rembourse => @frais_annex.rembourse }
    assert_redirected_to frais_annex_path(assigns(:frais_annex))
  end

  test "should destroy frais_annex" do
    assert_difference('FraisAnnex.count', -1) do
      delete :destroy, :id => @frais_annex
    end

    assert_redirected_to frais_annexes_path
  end
end
