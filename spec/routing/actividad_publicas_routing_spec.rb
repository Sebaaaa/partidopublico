require "rails_helper"

RSpec.describe ActividadPublicasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/actividad_publicas").to route_to("actividad_publicas#index")
    end

    it "routes to #new" do
      expect(:get => "/actividad_publicas/new").to route_to("actividad_publicas#new")
    end

    it "routes to #show" do
      expect(:get => "/actividad_publicas/1").to route_to("actividad_publicas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/actividad_publicas/1/edit").to route_to("actividad_publicas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/actividad_publicas").to route_to("actividad_publicas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/actividad_publicas/1").to route_to("actividad_publicas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/actividad_publicas/1").to route_to("actividad_publicas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/actividad_publicas/1").to route_to("actividad_publicas#destroy", :id => "1")
    end

  end
end
