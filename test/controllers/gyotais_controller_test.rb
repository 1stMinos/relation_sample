require 'test_helper'

class GyotaisControllerTest < ActionController::TestCase
  setup do
    @gyotai = gyotais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gyotais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gyotai" do
    assert_difference('Gyotai.count') do
      post :create, gyotai: { comment: @gyotai.comment, name: @gyotai.name, parent_id: @gyotai.parent_id, parent_name: @gyotai.parent_name }
    end

    assert_redirected_to gyotai_path(assigns(:gyotai))
  end

  test "should show gyotai" do
    get :show, id: @gyotai
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gyotai
    assert_response :success
  end

  test "should update gyotai" do
    patch :update, id: @gyotai, gyotai: { comment: @gyotai.comment, name: @gyotai.name, parent_id: @gyotai.parent_id, parent_name: @gyotai.parent_name }
    assert_redirected_to gyotai_path(assigns(:gyotai))
  end

  test "should destroy gyotai" do
    assert_difference('Gyotai.count', -1) do
      delete :destroy, id: @gyotai
    end

    assert_redirected_to gyotais_path
  end
end
