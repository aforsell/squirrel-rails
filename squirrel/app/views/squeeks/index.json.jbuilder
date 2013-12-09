json.array!(@squeeks) do |squeek|
  json.extract! squeek, :id, :user, :message
  json.url squeek_url(squeek, format: :json)
end
