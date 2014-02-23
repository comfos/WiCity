json.array!(@pharms) do |pharm|
  json.extract! pharm, :name, :address, :lat, :lng
  json.url pharm_url(pharm, format: :json)
end
