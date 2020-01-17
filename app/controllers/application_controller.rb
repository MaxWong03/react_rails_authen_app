class ApplicationController < ActionController::Base
  #if rails is just used for an api, do this
  skip_before_action :verify_authenticity_token
end
