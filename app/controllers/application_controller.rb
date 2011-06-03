class ApplicationController < ActionController::Base
  protect_from_forgery
  def cache_control_public
    response.headers['Cache-Control'] = 'public, max-age=300'
  end
end
