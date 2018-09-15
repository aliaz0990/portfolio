require "rails_helper"

describe FrontController do
  
  describe "GET index" do
    it "renders the index view" do
      get :index
      expect(get: "/").to route_to(controller: "front", action: "index")
    end
  end

  describe "GET resume" do
  	it "renders the index view" do
  		get :resume
  		expect(get: "/resume").to route_to(controller: "front", action: "resume")
  	end
  end

end
