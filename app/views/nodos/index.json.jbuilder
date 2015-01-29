json.array!(@nodos) do |nodo|
  json.extract! nodo, :id, :lat, :lng
  json.url nodo_url(nodo, format: :json)
end
