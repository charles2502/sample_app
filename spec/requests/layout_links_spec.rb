require 'spec_helper'

describe "LayoutLinks" do

  it "devrait trouver une page Accueil" do
    get '/'
    response.should have_selector('title', :content => "Accueil")
  end

  it "devrait trouver une page Contact" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "devrait trouver une page A propos" do
    get '/about'
    response.should have_selector('title', :content => "A propos")
  end

  it "devrait trouver une page Aide" do
    get '/help'
    response.should have_selector('title', :content => "Aide")
  end
end