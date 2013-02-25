class ApplicationAlert < ActiveRecord::Base
  attr_accessible :account_name, :alert_url, :application_name, :long_description, :message, :severity, :short_description, :user_application_id
  belongs_to :user_application
end
