json.array!(@settings) do |setting|
  json.extract! setting, :id, :title, :description
  json.url setting_url(setting, format: :json)
end
