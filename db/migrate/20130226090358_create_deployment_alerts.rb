class CreateDeploymentAlerts < ActiveRecord::Migration
  def change
    create_table :deployment_alerts do |t|
      t.string :application_name
      t.string :account_name
      t.string :changelog
      t.string :description
      t.string :revision
      t.string :deployment_url
      t.string :deployed_by

      t.timestamps
    end
  end
end
