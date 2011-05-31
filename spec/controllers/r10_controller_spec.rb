require 'spec_helper'
require 'ruby-debug'

describe R10Controller do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
debugger
      response.body.should contain "svm"
    end
  end

end
