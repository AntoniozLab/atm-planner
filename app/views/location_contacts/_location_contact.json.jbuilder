json.extract! location_contact, :id, :first_name, :last_name, :phone, :email, :position_name, :location_id, :created_at, :updated_at
json.url location_contact_url(location_contact, format: :json)
