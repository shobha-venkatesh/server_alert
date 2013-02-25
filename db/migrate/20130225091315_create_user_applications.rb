class CreateUserApplications < ActiveRecord::Migration
  def change
    create_table :user_applications do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
