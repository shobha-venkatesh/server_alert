require 'spec_helper'

describe ApplicationAlertsController, :type => :controller do
   context "create application alert" do
   	 it "should create a new application alert" do
     	 post :create, application_alert: FactoryGirl.attributes_for(:application_alert), :format => :xml
     	 response.should be_success
     end
   end
end
