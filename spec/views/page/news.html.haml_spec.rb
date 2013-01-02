require 'spec_helper'

describe "page/news.html.haml" do
  it "shows news content" do
    render
    rendered.should match /.*<h1>NEWS.*/
  end
end
