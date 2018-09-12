require "rails_helper"

describe FrontController do
  describe "GET index" do
    it "renders the :index view"
    get :index
    expect(response).to render_template("index")
  end
end
