class UserApplicationsController < ApplicationController
	def index
		@user_applications = UserApplication.find(:all)
	end
end
