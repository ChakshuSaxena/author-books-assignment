class Api::V1::BaseControllerController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token	
end
