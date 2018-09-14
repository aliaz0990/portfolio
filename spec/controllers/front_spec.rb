require "rails_helper"

describe FrontController do
  
  describe "GET index" do
    it "renders the index view" do
      get :index
      expect(get: "/").to route_to(controller: "front", action: "index")
    end
  end

end
