class AddAlertTimeToApplicationAlert < ActiveRecord::Migration
  def change
    add_column :application_alerts, :alert_time, "timestamp with local time zone"
  end
end
