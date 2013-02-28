class ApplicationAlertsController < ApplicationController
  respond_to :html, :xml, :json
  
  def build_application_alert(user_application,application_alert_hash)
    ApplicationAlert.build(user_application,application_alert_hash)
  end

  # def build_deployment_alert(deployment_alert_hash)
  #   DeploymentAlert.build(deployment_alert_hash)
  # end


  def create
    alerts = JSON.parse(params[:alert])
    user_application = UserApplication.find_by_name(alerts["application_name"])
    @alert = build_application_alert(user_application,alerts) if params.has_key?("alert")
    # @deploy_alert = build_deployment_alert(params[:deployment]) if params.has_key?("deployment")
    # @alert = ApplicationAlert.new(params[:application_alert])
    @error = {:error => 'Error while creating record'}
    
    if !@alert.nil? && @alert.save
      respond_to do |format|
            format.json { render :nothing => true, :status => :ok}
            format.xml { render :nothing => true, :status => :ok }
      end
    # elsif @deploy_alert.save
    #   respond_to do |format|
    #         format.json { render :nothing => true, :status => :ok}
    #         format.xml { render :nothing => true, :status => :ok }
    #   end
    else
      respond_to do |format|
        format.json { render :json => @error}
        format.xml { render :xml => @error}
      end
    end
  end

  def show
    @application_alert = ApplicationAlert.find(:all, :conditions => ["user_application_id=?",params[:id]], :order => 'created_at DESC')
  end

end
