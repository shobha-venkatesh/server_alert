require 'spec_helper'

describe ApplicationAlertsController, :type => :controller do

   # def build_application_alert(user_application = FactoryGirl(:user_application),application_alert_hash)
   # 	 ApplicationAlert.build(user_application,application_alert_hash)
   # end

   context "create application alert" do
   	 it "should create a new application alert" do
     	 post :create, alert: FactoryGirl.attributes_for(:application_alert), :format => :xml
     	 response.should be_success
     end
   end
end
