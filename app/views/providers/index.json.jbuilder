json.array!(@providers) do |provider|
  json.extract! provider, :id, :owner, :body, :region_id
  json.url provider_url(provider, format: :json)
end
