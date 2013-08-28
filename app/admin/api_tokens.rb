ActiveAdmin.register ApiToken do
  member_action :create, :method => :post do
  	user = current_admin_user.id
    build_token = build(user)
    redirect_to :action => :index, :notice => "Created!"
  	end

  	controller do
  		private
  		def build(user)
  		    ApiToken.new do |api| 
  			  api.token = SecureRandom.hex(5)
  		 	  api.user_id = user
  		 	  api.save
  	        end
        end
  	end
end
