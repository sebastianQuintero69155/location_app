class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :except => [:home]
    protected
    def after_sign_in_path_for(resource)
      request.env['omniauth.origin'] || stored_location_for(resource) || places_path
    end
end
