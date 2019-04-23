OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1027244330618-i691ki9snjjg6m1l9muu3ra4kgaibp4k.apps.googleusercontent.com', '4hNN34B_BygtapHivvWEnJSP', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end