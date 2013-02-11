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
      post :create, :user => { :login => @mission.login, :password => @mission.password, :civilite => @mission.civilite, :dateDepart => @mission.dateDepart, :dateRetour => @mission.dateRetour, :destination => @mission.destination, :frais => @mission.frais, :imputation => @mission.imputation, :motifDeplacement => @mission.motifDeplacement, :numMarche => @mission.numMarche, :permanant => @mission.permanant, :status => @mission.status }
    end

    assert_redirected_to user_path(assigns(:mission))
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
    put :update, :id => @user, :mission => { :NumConvention => @mission.NumConvention, :compteUser => @mission.compteUser, :dateClotureMission => @mission.dateClotureMission, :dateDepart => @mission.dateDepart, :dateRetour => @mission.dateRetour, :destination => @mission.destination, :frais => @mission.frais, :imputation => @mission.imputation, :motifDeplacement => @mission.motifDeplacement, :numMarche => @mission.numMarche, :permanant => @mission.permanant, :status => @mission.status }
    assert_redirected_to user_path(assigns(:mission))
  end

  test "should destroy user" do
    assert_difference('Mission.count', -1) do
      delete :destroy, :id => @user
    end

    assert_redirected_to users_path
  end
end
