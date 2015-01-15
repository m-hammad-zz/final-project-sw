json.array!(@account_types) do |account_type|
  json.extract! account_type, :id, :name, :lhs_attr, :rhs_attr, :plus_attr, :minus_attr
  json.url account_type_url(account_type, format: :json)
end
