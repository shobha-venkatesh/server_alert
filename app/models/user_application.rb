class UserApplication < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :application_alerts
end
