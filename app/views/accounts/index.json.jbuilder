json.array!(@accounts) do |account|
  json.extract! account, :id, :name, :account_type_id
  json.url account_url(account, format: :json)
end
