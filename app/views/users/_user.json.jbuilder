json.extract! user, :id, :name, :email, :password_hash, :watchtime, :created_at, :updated_at
json.url user_url(user, format: :json)
