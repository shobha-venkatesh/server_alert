class ApplicationAlert < ActiveRecord::Base
  attr_accessible :account_name, :alert_url, :application_name, :long_description, :message, :severity, :short_description, :user_application_id
  belongs_to :user_application

  class << self
    def build(user_application,options = {})
      # attributes = {:user_application => user_application}
      unless options.nil?
      p "options for Alert create ~ #{options.inspect}"
      obj_params = {:account_name => options["account_name"], :application_name => options["application_name"], 
                    :alert_url => options["alert_url"], :long_description => options["long_description"], 
                    :message => options["message"], :severity => options["severity"], 
                    :short_description => options["short_description"], :user_application_id => 1 } 
      ApplicationAlert.new(obj_params).tap do |appln|
        # appln.account_name = appln.account_name
        # appln.alert_url = appln.alert_url
        # appln.application_name = appln.application_name
        # appln.long_description = appln.long_description
        # appln.short_description = appln.short_description
        # appln.message = appln.message
        # appln.severity = appln.severity
        # appln.user_application_id = appln.user_application.id
      end
    end
    end
  end
end