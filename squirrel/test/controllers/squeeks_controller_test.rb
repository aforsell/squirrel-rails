require 'test_helper'

class SqueeksControllerTest < ActionController::TestCase
  setup do
    @squeek = squeeks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:squeeks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create squeek" do
    assert_difference('Squeek.count') do
      post :create, squeek: { message: @squeek.message, user: @squeek.user }
    end

    assert_redirected_to squeek_path(assigns(:squeek))
  end

  test "should show squeek" do
    get :show, id: @squeek
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @squeek
    assert_response :success
  end

  test "should update squeek" do
    patch :update, id: @squeek, squeek: { message: @squeek.message, user: @squeek.user }
    assert_redirected_to squeek_path(assigns(:squeek))
  end

  test "should destroy squeek" do
    assert_difference('Squeek.count', -1) do
      delete :destroy, id: @squeek
    end

    assert_redirected_to squeeks_path
  end
end
