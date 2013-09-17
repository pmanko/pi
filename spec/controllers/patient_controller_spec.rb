require 'spec_helper'

describe PatientController do

  describe "GET 'profile'" do
    it "returns http success" do
      get 'profile'
      response.should be_success
    end
  end

end
