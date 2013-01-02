require 'spec_helper'

describe "page/home.html.haml" do
  it "shows home page content" do
    render
    rendered.should match /.*HOME.*/
  end
end
