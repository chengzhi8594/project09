class RemindMailer < ApplicationMailer

    def send_tomorrow_mail
        @rsvp = params[:rsvp]
        @event = @rsvp.event
        @user = @rsvp.user
    
        mail to: @user.email, subject: "You have an event tomorrow!"
    
      end
end
