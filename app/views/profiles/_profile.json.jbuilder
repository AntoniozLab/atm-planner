json.extract! profile, :id, :name, :type, :description, :created_at, :updated_at
json.url profile_url(profile, format: :json)
