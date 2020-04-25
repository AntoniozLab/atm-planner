json.extract! requirement_detail, :id, :description, :start_date, :end_date, :cancel_observation, :atm_new, :atm_old, :requirement_id, :requirement_type_id, :requirement_detail_state_id, :requirement_detail_reason_id, :created_at, :updated_at
json.url requirement_detail_url(requirement_detail, format: :json)
