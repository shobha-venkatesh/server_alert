class CreateApplicationAlerts < ActiveRecord::Migration
  def change
    create_table :application_alerts do |t|
      t.integer :user_application_id
      t.text :short_description
      t.text :long_description
      t.string :application_name
      t.string :account_name
      t.string :severity
      t.string :message
      t.string :alert_url

      t.timestamps
    end
  end
end
