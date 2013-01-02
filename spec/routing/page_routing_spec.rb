require "spec_helper"

describe PageController do
  describe "routing" do

    it "routes to #index" do
      get("/home").should route_to("pages#home")
    end
  end
end
