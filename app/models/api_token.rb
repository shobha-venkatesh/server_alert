class ApiToken < ActiveRecord::Base
  attr_accessible :token, :user_id

  # def build(user)
  # 	ApiToken.new(merge(user_id)).tap do |api| 
  # 		api.token = SecureRandom.hex(5)
  # 		api.user_id = 1
  # 	end
  # end
end
