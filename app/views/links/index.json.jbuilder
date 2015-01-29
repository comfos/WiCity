json.array!(@links) do |link|
  json.extract! link, :id, :n1, :n2, :Timep, :FlussIn, :FlussOut
  json.url link_url(link, format: :json)
end
