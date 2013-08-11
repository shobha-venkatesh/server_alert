module ApiTokensHelper
	def build_api_token
 	 user = current_user
 	 ApiToken.build(user)
  end
end
