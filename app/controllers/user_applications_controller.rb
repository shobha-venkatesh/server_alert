class UserApplicationsController < ApplicationController
	def show
		@user_application = ApplicationAlert.find(params[:id])
	end
end
