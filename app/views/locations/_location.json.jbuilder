json.extract! location, :id, :patient_id, :code, :name, :created_at, :updated_at
json.url location_url(location, format: :json)