class ApiTokensController < ApplicationController
 respond_to :html, :json, :xml
 
 def build_api_token
 	 user = current_user
 	 ApiTokensHelper.build(user)
  end
end
