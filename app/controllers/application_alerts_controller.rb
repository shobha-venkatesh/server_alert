class ApplicationAlertsController < ApplicationController
  respond_to :html, :xml, :json
  
  def build_application_alert(user_application,application_alert_hash)
    ApplicationAlert.build(user_application,application_alert_hash)
  end

  def create
    user_application = UserApplication.find_by_name(params[:application_name])
    @alert = build_application_alert(user_application,params)
    # @alert = ApplicationAlert.new(params[:application_alert])
    @error = {:error => 'creating alert error'}
    if @alert.save
      respond_to do |format|
            format.json { render :json => @alert}
            format.xml { render :xml => @alert}
        end
    else
      respond_to do |format|
        format.json { render :json => @error}
        format.xml { render :xml => @error}
      end
    end
  end
end
