json.array!(@posts) do |post|
  json.extract! post, :id, :title, :subtitle, :body
  json.url post_url(post, format: :json)
end
