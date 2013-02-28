class AddAlertTimeToApplicationAlert < ActiveRecord::Migration
  def change
    add_column :application_alerts, :alert_time, :timestamp
  end
end
