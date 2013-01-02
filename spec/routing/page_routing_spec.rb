require "spec_helper"

describe PageController do
  describe "routing" do

    it "routes to #home" do
      get("/").should route_to("page#home")
      get("/home").should route_to("page#home")
    end
    it "routes to other pages" do
      get("/news").should route_to("page#news")
      pages=['news', 'about_me', 'gallery', 'workshops', 'comments', 'links', 'contact']
      pages.each do |page|
        get('/'+page).should route_to('page#'+page)
      end
    end
  end
end
