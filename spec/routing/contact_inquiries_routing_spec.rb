require "spec_helper"

describe ContactInquiriesController do
  describe "routing" do

    it "routes to #index" do
      get("/contact_inquiries").should route_to("contact_inquiries#index")
    end

    it "routes to #new" do
      get("/contact_inquiries/new").should route_to("contact_inquiries#new")
    end

    it "routes to #show" do
      get("/contact_inquiries/1").should route_to("contact_inquiries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contact_inquiries/1/edit").should route_to("contact_inquiries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contact_inquiries").should route_to("contact_inquiries#create")
    end

    it "routes to #update" do
      put("/contact_inquiries/1").should route_to("contact_inquiries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contact_inquiries/1").should route_to("contact_inquiries#destroy", :id => "1")
    end

  end
end
