require 'spec_helper'

describe "r10/index.html.erb" do
  @rspns = get "/r10/index"
  # @ndoc = Nokogiri::HTML(@rspns.body)
  @rspns.body.should contain "svm"
end
