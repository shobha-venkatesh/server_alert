ActiveAdmin.register ApiToken do
  actions :index, :show, :destroy, :new
 
  form do |f|
  	 f.actions
  end

  member_action :create, :method => :post do
  	@user = current_admin_user.id
  	@api_token = ApiToken.find_by_user_id(@user)
    if @api_token.blank?
       build_token = build(@user)
    else
        @api_token.token = SecureRandom.hex(6)
        @api_token.save
    end
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
 