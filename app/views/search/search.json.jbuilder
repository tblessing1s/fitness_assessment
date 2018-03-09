json.clients do
  json.array!(@clients) do |client|
    json.name client.name
    json.url client_path(client)
  end
end