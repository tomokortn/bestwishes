json.extract! user, :id, :icon, :name, :created_at, :updated_at
json.url user_url(user, format: :json)
