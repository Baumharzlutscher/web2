json.array!(@standorts) do |standort|
  json.extract! standort, :id, :Adresse, :Oeffnungszeiten
  json.url standort_url(standort, format: :json)
end
