class CreateApiTokens < ActiveRecord::Migration
  def change
    create_table :api_tokens do |t|
      t.string :token
      t.decimal :user_id

      t.timestamps
    end
  end
end
