json.array!(@visitors) do |visitor|
  json.extract! visitor, :id, :name, :email, :telephone, :content
  json.url visitor_url(visitor, format: :json)
end
