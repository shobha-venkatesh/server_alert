class ApiToken < ActiveRecord::Base
  attr_accessible :token, :user_id
end
