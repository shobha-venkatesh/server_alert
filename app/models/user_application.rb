class UserApplication < ActiveRecord::Base
  attr_accessible :description, :name, :current_status
  has_many :application_alerts
end
