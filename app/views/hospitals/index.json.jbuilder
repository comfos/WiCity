json.array!(@hospitals) do |hospital|
  json.extract! hospital, :id, :name, :address, :lat, :lng, :LM, :LP, :MM, :MP, :MEM, :MEP, :GM, :GP, :VM, :VP, :SM, :SP, :DM, :DP
  json.url hospital_url(hospital, format: :json)
end
