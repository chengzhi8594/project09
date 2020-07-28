require 'test_helper'

class RsvpsControllerTest < ActionDispatch::IntegrationTest
    setup do
        @event = events(:one)
        @user = users(:one)
      end
    
       test "create rsvp" do
        post user_session_url, params: {user:{email: 'tparki@hotmail.com', password: 'password'}}
        assert_difference('Rsvp.count') do
          post rsvps_event_url(:id=>@event.id)
          end
       end
end