require 'test_helper'

class MyPrayerRequestsControllerTest < ActionController::TestCase
  setup do
    @my_prayer_request = my_prayer_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_prayer_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_prayer_request" do
    assert_difference('MyPrayerRequest.count') do
      post :create, my_prayer_request: @my_prayer_request.attributes
    end

    assert_redirected_to my_prayer_request_path(assigns(:my_prayer_request))
  end

  test "should show my_prayer_request" do
    get :show, id: @my_prayer_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_prayer_request
    assert_response :success
  end

  test "should update my_prayer_request" do
    put :update, id: @my_prayer_request, my_prayer_request: @my_prayer_request.attributes
    assert_redirected_to my_prayer_request_path(assigns(:my_prayer_request))
  end

  test "should destroy my_prayer_request" do
    assert_difference('MyPrayerRequest.count', -1) do
      delete :destroy, id: @my_prayer_request
    end

    assert_redirected_to my_prayer_requests_path
  end
end
