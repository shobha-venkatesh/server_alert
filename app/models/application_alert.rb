class ApplicationAlert < ActiveRecord::Base
  attr_accessible :account_name, :alert_url, :application_name, :long_description, :message, :severity, :short_description, :user_application_id, :alert_time
  belongs_to :user_application
  after_create :update_user_application
  
  STATUS = {
   :down => "downtime"
  }
  
  def update_user_application
    if severity == STATUS[:down] && short_description.slice("alert opened")
      user_application.current_status = 'down'
    else
      user_application.current_status = 'up'
    end
    user_application.save
  end

  class << self
    def build(user_application,options = {})
      # attributes = {:user_application => user_application}
      unless options.nil?
       obj_params = {:account_name => options["account_name"], :application_name => options["application_name"], 
                    :alert_url => options["alert_url"], :long_description => options["long_description"], 
                    :message => options["message"], :severity => options["severity"], 
                    :short_description => options["short_description"], :user_application_id => user_application.try(:id), :alert_time => options["created_at"] } 
       ApplicationAlert.new(obj_params)
     end
   end
  end
end