#session_store defines the structure of the cooke

# key: is the name of the session cookie
#domain: the domain of the api application (Rails)

if Rails.env === "production"
  Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: "jdh-authen-app-api.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_authentication_app"
end