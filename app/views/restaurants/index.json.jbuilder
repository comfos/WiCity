json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :address, :lat, :lng, :LM, :LP, :MM, :MP, :MEM, :MEP, :GM, :GP, :VM, :VP, :SM, :SP, :DM, :DP, :phone
  json.url restaurant_url(restaurant, format: :json)
end
