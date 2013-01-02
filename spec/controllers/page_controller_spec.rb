require 'spec_helper'

describe PageController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'news'" do
    it "returns http success" do
      get 'news'
      response.should be_success
    end
  end

  describe "GET 'about_me'" do
    it "returns http success" do
      get 'about_me'
      response.should be_success
    end
  end

  describe "GET 'gallery'" do
    it "returns http success" do
      get 'gallery'
      response.should be_success
    end
  end

  describe "GET 'workshops'" do
    it "returns http success" do
      get 'workshops'
      response.should be_success
    end
  end

  describe "GET 'comments'" do
    it "returns http success" do
      get 'comments'
      response.should be_success
    end
  end

  describe "GET 'links'" do
    it "returns http success" do
      get 'links'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

end
