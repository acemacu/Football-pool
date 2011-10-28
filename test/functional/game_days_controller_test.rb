require 'test_helper'

class GameDaysControllerTest < ActionController::TestCase
  setup do
    @game_day = game_days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_day" do
    assert_difference('GameDay.count') do
      post :create, :game_day => @game_day.attributes
    end

    assert_redirected_to game_day_path(assigns(:game_day))
  end

  test "should show game_day" do
    get :show, :id => @game_day.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @game_day.to_param
    assert_response :success
  end

  test "should update game_day" do
    put :update, :id => @game_day.to_param, :game_day => @game_day.attributes
    assert_redirected_to game_day_path(assigns(:game_day))
  end

  test "should destroy game_day" do
    assert_difference('GameDay.count', -1) do
      delete :destroy, :id => @game_day.to_param
    end

    assert_redirected_to game_days_path
  end
end
