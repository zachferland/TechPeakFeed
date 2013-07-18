json.array!(@users) do |user|
  json.extract! user, :name, :image, :feed
  json.url user_url(user, format: :json)
end
