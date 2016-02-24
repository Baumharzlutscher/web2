json.array!(@warenkorbs) do |warenkorb|
  json.extract! warenkorb, :id, :Anzahl, :Rabattcode, :Gesamtbetrag
  json.url warenkorb_url(warenkorb, format: :json)
end
