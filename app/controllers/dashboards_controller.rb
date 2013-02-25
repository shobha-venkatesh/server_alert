class DashboardsController < ApplicationController
	respond_to :html, :xml, :json
  def index
		@dashboards = UserApplication.find(:all)
	end
end
