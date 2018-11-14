Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter,
    Rails.application.credentials.twitter[:twitter_api_key],
    Rails.application.credentials.twitter[:twitter_api_secret],
    display: 'popup',
    callback_url: "http://localhost:3000/users/auth/twitter/callback"

end
