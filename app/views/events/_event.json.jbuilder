json.extract! event, :id, :title, :description, :start, :end, :user_id, :address, :latitude, :longitude, :created_at, :updated_at
json.url event_url(event, format: :json)
