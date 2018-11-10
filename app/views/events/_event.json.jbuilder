json.extract! event, :id, :title, :description, :address, :start_date, :end_date, :header_image, :organizer_name, :organizer_description, :admission_price, :max_tickets, :created_at, :updated_at
json.url event_url(event, format: :json)
