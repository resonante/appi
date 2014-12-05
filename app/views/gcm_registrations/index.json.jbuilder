json.array!(@gcm_registrations) do |gcm_registration|
  json.extract! gcm_registration, :id, :user_id, :gcm_registration_id
  json.url gcm_registration_url(gcm_registration, format: :json)
end
