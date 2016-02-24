json.array!(@produktes) do |produkte|
  json.extract! produkte, :id, :Name, :Preis, :Bearbeitungszeit, :Produktgruppe
  json.url produkte_url(produkte, format: :json)
end
