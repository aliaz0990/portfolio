require "rails_helper"

describe FrontController do
  describe "GET index" do
    it "renders the :index view" do
      get :index
    end
  end
end
