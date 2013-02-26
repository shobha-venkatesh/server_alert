class DeploymentAlert < ActiveRecord::Base
  attr_accessible :account_name, :application_name, :changelog, :deployed_by, :deployment_url, :description, :revision
  
  class << self
  	 def build(options={})
  		 unless options.nil?
  	     	 obj_params = {:account_name => options["account_name"], :application_name => options["application_name"], 
  	    		             :changelog => options["changelog"], :deployed_by => options["deployed_by"], 
  	    		             :deployment_url => options["deployment_url"], :description => options["description"], 
  			                 :revision => options["revision"]}
  		     DeploymentAlert.new(obj_params)
  		   end
  	   end
   end
end
