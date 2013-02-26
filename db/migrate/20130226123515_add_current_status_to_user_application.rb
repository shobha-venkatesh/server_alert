class AddCurrentStatusToUserApplication < ActiveRecord::Migration
  def change
    add_column :user_applications, :current_status, :string
  end
end
