require 'test_helper'

class TacksControllerTest < ActionController::TestCase
  setup do
    @tack = tacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tacks)
  end

  test "should create tack" do
    assert_difference('Tack.count') do
      post :create, tack: { name: @tack.name }
    end

    assert_response 201
  end

  test "should show tack" do
    get :show, id: @tack
    assert_response :success
  end

  test "should update tack" do
    put :update, id: @tack, tack: { name: @tack.name }
    assert_response 204
  end

  test "should destroy tack" do
    assert_difference('Tack.count', -1) do
      delete :destroy, id: @tack
    end

    assert_response 204
  end
end
