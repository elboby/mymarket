json.array!(@products) do |product|
  json.extract! product, :id, :name, :body, :price, :provider_id
  json.url provider_product_url(provider_product, format: :json)
end
