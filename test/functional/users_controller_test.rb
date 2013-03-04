require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup :activate_authlogic

  setup do
    @user = users(:guillaume)
    @user.login = 'guigui'
    @user.crypted_password = 'lolilol'
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
    assert_equal(@user.login ,'guigui', "Le nom est bien changé")
    assert_not_equal(@user.crypted_password,nil,"Le MdP est vide")
    post :create, :user => { :login => @user.login, :civilite => @user.civilite, :nom => @user.nom, :prenom => @user.prenom, :grade => @user.grade, :adresse_familiale => @user.adresse_familiale, :adresse_administrative => @user.adresse_administrative, :indice_majore => @user.indice_majore, :equipe => @user.equipe, :departement => @user.departement, :rib_valide => @user.rib_valide, :nom_banque => @user.nom_banque, :admin => @user.admin, :password => @user.crypted_password, :password_confirmation => @user.crypted_password }
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
    assert_redirected_to user_path(assigns(:user))
    assert_not_equal(@user.id,nil,"L'utilisateur n'a pas d'identifiant") 
    put :create, :user => { :login => @user.login, :crypted_password => @user.crypted_password, :password_salt => @user.password_salt, :persistence_token => @user.persistence_token, :civilite => @user.civilite, :nom => @user.nom, :prenom => @user.prenom, :grade => @user.grade, :adresse_familiale => @user.adresse_familiale, :adresse_administrative => @user.adresse_administrative, :indice_majore => @user.indice_majore, :equipe => @user.equipe, :departement => @user.departement, :rib_valide => @user.rib_valide, :nom_banque => @user.nom_banque, :admin => @user.admin }
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, :id => @user
    end

    assert_redirected_to users_path
  end
end
