json.array!(@advices) do |advice|
  json.extract! advice, :id, :name, :content
  json.url advice_url(advice, format: :json)
end
