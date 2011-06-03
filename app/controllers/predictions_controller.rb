class PredictionsController < ApplicationController
  # cache_control_public asks proxy-servers and browsers to cache content from this controller:
  before_filter :cache_control_public

end
