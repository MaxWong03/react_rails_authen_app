# cors.rb allow you to whitelist certain domains
# because secure cookie need to be passed from the front end app (React) and the backend app (Rails)
# we need to be able to use a tool called "credential"
# Rails require you to implement cors if you wish to use credentials and work with session
# You have to give specific set of rules for how you are going to be able to communicate 
# These rules are going to be defined in this initializer

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    #For development
    origins "http://localhost:3000"
    resource "*", headers: :any, methods:[:get, :post, :put, :patch, :delete, :options, :head],
credentials: true
  end

  #For production
  allow do
    origins "https://jdh-authen-app-react.herokuapp.com"
    resource "*", headers: :any, methods:[:get, :post, :put, :patch, :delete, :options, :head],
credentials: true
  end
end