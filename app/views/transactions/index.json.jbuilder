json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :from_acc, :to_acc, :amount, :date, :desc, :is_to_to
  json.url transaction_url(transaction, format: :json)
end
