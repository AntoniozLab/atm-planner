json.extract! location, :id, :reference_code, :name, :address, :address_reference, :active_state, :location_type_id, :location_owner_id, :district_id, :created_at, :updated_at
json.url location_url(location, format: :json)
