json.extract! booking, :id, :title, :description, :status, :time, :address, :user_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
