class ApplicationController < ActionController::Base
  protect_from_forgery

  # cache_control_public asks proxy-servers and browsers to cache content:
  before_filter :cache_control_public

  def cache_control_public
    response.headers['Cache-Control'] = 'public, max-age=300'
  end
end
