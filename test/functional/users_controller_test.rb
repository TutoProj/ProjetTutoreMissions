require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, :user => { :adresse_administrative => @user.adresse_administrative, :adresse_familiale => @user.adresse_familiale, :civilite => @user.civilite, :departement => @user.departement, :equipe => @user.equipe, :grade => @user.grade, :indice_majore => @user.indice_majore, :nom => @user.nom, :nom_banque => @user.nom_banque, :passwd => @user.passwd, :prenom => @user.prenom, :rib_valide => @user.rib_valide }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, :id => @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @user
    assert_response :success
  end

  test "should update user" do
    put :update, :id => @user, :user => { :adresse_administrative => @user.adresse_administrative, :adresse_familiale => @user.adresse_familiale, :civilite => @user.civilite, :departement => @user.departement, :equipe => @user.equipe, :grade => @user.grade, :indice_majore => @user.indice_majore, :nom => @user.nom, :nom_banque => @user.nom_banque, :passwd => @user.passwd, :prenom => @user.prenom, :rib_valide => @user.rib_valide }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, :id => @user
    end

    assert_redirected_to users_path
  end
end
