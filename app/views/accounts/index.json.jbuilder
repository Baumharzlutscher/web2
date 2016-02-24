json.array!(@accounts) do |account|
  json.extract! account, :id, :Rechnungsadresse, :Nickname, :Status
  json.url account_url(account, format: :json)
end
