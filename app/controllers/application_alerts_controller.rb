class ApplicationAlertsController < ApplicationController
  respond_to :html, :xml, :json
  
  def create
    @alert = ApplicationAlert.new(params[:application_alert])
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
