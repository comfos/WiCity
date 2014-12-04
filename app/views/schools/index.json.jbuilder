json.array!(@schools) do |school|
  json.extract! school, :id, :name, :address, :lat, :lng, :phone, :type
  json.url school_url(school, format: :json)
end
