require 'spec_helper'

describe MissionsController do

  describe "GET 'ordre_mission'" do
    it "returns http success" do
      get 'ordre_mission'
      response.should be_success
    end
  end

end
