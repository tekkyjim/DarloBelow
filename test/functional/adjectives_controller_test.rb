require 'test_helper'

class AdjectivesControllerTest < ActionController::TestCase
  setup do
    @adjective = adjectives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adjectives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adjective" do
    assert_difference('Adjective.count') do
      post :create, :adjective => @adjective.attributes
    end

    assert_redirected_to adjective_path(assigns(:adjective))
  end

  test "should show adjective" do
    get :show, :id => @adjective.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @adjective.to_param
    assert_response :success
  end

  test "should update adjective" do
    put :update, :id => @adjective.to_param, :adjective => @adjective.attributes
    assert_redirected_to adjective_path(assigns(:adjective))
  end

  test "should destroy adjective" do
    assert_difference('Adjective.count', -1) do
      delete :destroy, :id => @adjective.to_param
    end

    assert_redirected_to adjectives_path
  end
end
