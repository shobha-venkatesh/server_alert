ActiveAdmin.register ApiToken do
  controller do
     def build_api_token
 	     user = current_user
 	     ApiToken.build(user)
 	  end
 	end
end
