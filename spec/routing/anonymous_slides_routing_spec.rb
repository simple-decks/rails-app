require "spec_helper"

describe AnonymousSlidesController do
  describe "routing" do

    it "routes to #index" do
      get("/anonymous_slides").should route_to("anonymous_slides#index")
    end

    it "routes to #new" do
      get("/anonymous_slides/new").should route_to("anonymous_slides#new")
    end

    it "routes to #show" do
      get("/anonymous_slides/1").should route_to("anonymous_slides#show", :id => "1")
    end

    it "routes to #edit" do
      get("/anonymous_slides/1/edit").should route_to("anonymous_slides#edit", :id => "1")
    end

    it "routes to #create" do
      post("/anonymous_slides").should route_to("anonymous_slides#create")
    end

    it "routes to #update" do
      put("/anonymous_slides/1").should route_to("anonymous_slides#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/anonymous_slides/1").should route_to("anonymous_slides#destroy", :id => "1")
    end

  end
end
