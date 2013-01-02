require 'spec_helper'

describe "page/home.html.haml" do
  it "shows home page content" do
    render
    rendered.should match /.*<h1>HOME.*/
  end
end
