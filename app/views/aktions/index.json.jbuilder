json.array!(@aktions) do |aktion|
  json.extract! aktion, :id, :Monat, :Name, :Rabatt
  json.url aktion_url(aktion, format: :json)
end
