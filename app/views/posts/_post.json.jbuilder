json.extract! post, :id, :name, :iso, :shutter_speed, :appature, :composition, :location, :description, :created_at, :updated_at
json.url post_url(post, format: :json)
