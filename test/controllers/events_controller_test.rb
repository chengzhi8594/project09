require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
    @user = users(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should show event" do
    get event_url(:id => @event.id)
    assert_response :success
  end

  test "should get edit" do
    post user_session_url, params: {user:{email: @user.email, password: 'password'}}
    get edit_event_url(@event)
    assert_response :success
  end

  test "should create event" do
    post user_session_url, params: {user:{email: 'tparki@hotmail.com', password: 'password'}}
    @new_event = {:title => "Event test", :description => "Testing122333333333", :address => "testing", :user_id => 1}
    assert_difference('Event.count', -0) do
    post events_url,params:{event: @new_event}
    end
  end

  test "should update event" do
    post user_session_url, params: {user:{email: 'tparki@hotmail.com', password: 'password'}}
    patch event_url(@event), params: { event: { title: "edited", description: "edited" } }
    assert_response :success
  end

  test "should destroy event" do
    post user_session_url, params: {user:{email: 'tparki@hotmail.com', password: 'password'}}
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end

  


  
