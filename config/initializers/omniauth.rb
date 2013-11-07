Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['341325329345226'], ENV['6a77ed988ca65393ca51fdf6d2ae0b8e']
end