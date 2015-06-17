json.array!(@tangazos) do |tangazo|
  json.extract! tangazo, :id, :description, :owner
  json.url tangazo_url(tangazo, format: :json)
end
