require 'test_helper'

class FromStationsControllerTest < ActionController::TestCase
  setup do
    @from_station = from_stations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:from_stations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create from_station" do
    assert_difference('FromStation.count') do
      post :create, from_station: { comment: @from_station.comment, from_station_way_id: @from_station.from_station_way_id, minutes: @from_station.minutes, office_id: @from_station.office_id }
    end

    assert_redirected_to from_station_path(assigns(:from_station))
  end

  test "should show from_station" do
    get :show, id: @from_station
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @from_station
    assert_response :success
  end

  test "should update from_station" do
    patch :update, id: @from_station, from_station: { comment: @from_station.comment, from_station_way_id: @from_station.from_station_way_id, minutes: @from_station.minutes, office_id: @from_station.office_id }
    assert_redirected_to from_station_path(assigns(:from_station))
  end

  test "should destroy from_station" do
    assert_difference('FromStation.count', -1) do
      delete :destroy, id: @from_station
    end

    assert_redirected_to from_stations_path
  end
end
