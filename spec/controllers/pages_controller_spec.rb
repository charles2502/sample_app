require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title="Simple App du Tutoriel Ruby on Rails"
  end

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

     it "proper title" do
      get 'home'
      response.should have_selector("title",
        :content => @base_title + " | Accueil")
    end
  end

  describe "GET help" do
    it "returns http succes" do
      get 'help'
      response.should be_success
    end

    it "proper title" do
      get 'help'
      response.should have_selector("title",
        :content => @base_title + " | Aide")
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "proper title" do
      get 'contact'
      response.should have_selector("title",
        :content => @base_title + " | Contact")
    end
  end

  describe "GET 'about'" do
    it "eturns http success" do
      get 'about'
      response.should be_success
    end

    it "proper title" do
      get 'about'
      response.should have_selector("title",
        :content => @base_title + " | A propos")
    end
  end
end
