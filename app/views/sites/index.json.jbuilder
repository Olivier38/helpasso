json.array!(@sites) do |site|
  json.extract! site, :id, :facebook, :twitter, :linkedin, :website, :user_id
  json.url site_url(site, format: :json)
end
