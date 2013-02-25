class UserApplication < ActiveRecord::Base
  attr_accessible :description, :name
end
