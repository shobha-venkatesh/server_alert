require 'spec_helper'

describe DeploymentAlert do
  def build_deployment_alert(deployment_alert_hash)
   	 DeploymentAlert.build(deployment_alert_hash)
   end
   
   context "build" do
   	 it "builds a DeploymentAlert" do
   	 	    # build_deployment_alert(FactoryGirl.attributes_for(:deployment_alert))
		end
   end

end
