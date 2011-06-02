require 'spec_helper'

describe R10Controller do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
debugger
      response.should be_success
    end
  end

end
