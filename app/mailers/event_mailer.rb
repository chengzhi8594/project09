class EventMailer < ApplicationMailer

  def send_reminder_mail
    @rsvp = params[:rsvp]
    @event = @rsvp.event
    @user = @rsvp.event.user

    mail to: @user.email, subject: "Yes!You have one new attendee!"

  end
 


end
