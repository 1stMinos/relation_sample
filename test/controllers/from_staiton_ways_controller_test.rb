require 'test_helper'

class FromStaitonWaysControllerTest < ActionController::TestCase
  setup do
    @from_staiton_way = from_staiton_ways(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:from_staiton_ways)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create from_staiton_way" do
    assert_difference('FromStaitonWay.count') do
      post :create, from_staiton_way: { name: @from_staiton_way.name }
    end

    assert_redirected_to from_staiton_way_path(assigns(:from_staiton_way))
  end

  test "should show from_staiton_way" do
    get :show, id: @from_staiton_way
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @from_staiton_way
    assert_response :success
  end

  test "should update from_staiton_way" do
    patch :update, id: @from_staiton_way, from_staiton_way: { name: @from_staiton_way.name }
    assert_redirected_to from_staiton_way_path(assigns(:from_staiton_way))
  end

  test "should destroy from_staiton_way" do
    assert_difference('FromStaitonWay.count', -1) do
      delete :destroy, id: @from_staiton_way
    end

    assert_redirected_to from_staiton_ways_path
  end
end
