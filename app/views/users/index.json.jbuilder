json.array!(@users) do |user|
  json.extract! user, :id, :username, :name, :email, :password, :group_id
  json.url user_url(user, format: :json)
end
