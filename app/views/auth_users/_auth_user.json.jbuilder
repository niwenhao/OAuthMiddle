json.extract! auth_user, :id, :userid, :name, :mail, :address, :created_at, :updated_at
json.url auth_user_url(auth_user, format: :json)
