json.array!(@galleries) do |gallery|
  json.extract! gallery, :id, :title, :body
  json.url gallery_url(gallery, format: :json)
end
