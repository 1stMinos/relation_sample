require 'test_helper'

class FromStationWaysControllerTest < ActionController::TestCase
  setup do
    @from_station_way = from_station_ways(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:from_station_ways)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create from_station_way" do
    assert_difference('FromStationWay.count') do
      post :create, from_station_way: { name: @from_station_way.name }
    end

    assert_redirected_to from_station_way_path(assigns(:from_station_way))
  end

  test "should show from_station_way" do
    get :show, id: @from_station_way
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @from_station_way
    assert_response :success
  end

  test "should update from_station_way" do
    patch :update, id: @from_station_way, from_station_way: { name: @from_station_way.name }
    assert_redirected_to from_station_way_path(assigns(:from_station_way))
  end

  test "should destroy from_station_way" do
    assert_difference('FromStationWay.count', -1) do
      delete :destroy, id: @from_station_way
    end

    assert_redirected_to from_station_ways_path
  end
end
