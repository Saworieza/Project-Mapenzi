require 'test_helper'

class TangazosControllerTest < ActionController::TestCase
  setup do
    @tangazo = tangazos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tangazos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tangazo" do
    assert_difference('Tangazo.count') do
      post :create, tangazo: { description: @tangazo.description, owner: @tangazo.owner }
    end

    assert_redirected_to tangazo_path(assigns(:tangazo))
  end

  test "should show tangazo" do
    get :show, id: @tangazo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tangazo
    assert_response :success
  end

  test "should update tangazo" do
    patch :update, id: @tangazo, tangazo: { description: @tangazo.description, owner: @tangazo.owner }
    assert_redirected_to tangazo_path(assigns(:tangazo))
  end

  test "should destroy tangazo" do
    assert_difference('Tangazo.count', -1) do
      delete :destroy, id: @tangazo
    end

    assert_redirected_to tangazos_path
  end
end
