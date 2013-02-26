require 'spec_helper'

describe ApplicationAlert do

	def build_application_alert(user_application = FactoryGirl(:user_application),application_alert_hash)
   	 ApplicationAlert.build(user_application,application_alert_hash)
   end

   context "associations" do
   	it {should belong_to :user_application}
   end

	context "build" do
		it "builds a application alert" do
			user_application = FactoryGirl.create(:user_application)
			application_alert_hash = {:account_name => "strata", :application_name => "memp", :alert_url => "alert_url", 
				                       :long_description => "", :message => "message", :severity => "low",
				                       :short_description => "describe", :user_application_id => user_application.id}
			alert = build_application_alert(user_application,application_alert_hash )
			alert.should be_valid
		end
	end
end
