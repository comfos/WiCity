json.array!(@caves) do |cafe|
  json.extract! cafe, :id, :name, :address, :lat, :lng, :LM, :LP, :MM, :MP, :MEM, :MEP, :GM, :GP, :VM, :VP, :SM, :SP, :DM, :DP
  json.url cafe_url(cafe, format: :json)
end
