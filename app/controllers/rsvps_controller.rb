class RsvpsController < ApplicationController
    def create
      @rsvps = current_user.rsvps.build({event_id: params[:id]})
      
      
      if @rsvps.save
        EventMailer.with(rsvp: @rsvps).send_reminder_mail.deliver_now
        time_now = DateTime.now
        time_of_event = @rsvps.event.start
        hours_between = TimeDifference.between(time_now, time_of_event).in_hours
        time_to_notify = hours_between-24
        RemindMailer.with(rsvp: @rsvps).send_tomorrow_mail.deliver_later!(wait: time_to_notify.hours)
        flash[:notice] = "You have RSVP'd"
        redirect_to event_path
      end
    end

    def rsvps
      @rsvps=rsvps.new
    end
    
    
end

 



  