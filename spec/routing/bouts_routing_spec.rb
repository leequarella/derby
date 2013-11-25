require "spec_helper"

describe BoutsController do
  describe "routing" do

    it "routes to #index" do
      get("/bouts").should route_to("bouts#index")
    end

    it "routes to #new" do
      get("/bouts/new").should route_to("bouts#new")
    end

    it "routes to #show" do
      get("/bouts/1").should route_to("bouts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bouts/1/edit").should route_to("bouts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bouts").should route_to("bouts#create")
    end

    it "routes to #update" do
      put("/bouts/1").should route_to("bouts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bouts/1").should route_to("bouts#destroy", :id => "1")
    end

  end
end
