class CreateFollowers < ActiveRecord::Migration[5.2]
  def change
    create_table :followers do |t|
      t.text :name
      t.integer :user_id

      t.timestamps
    end
  end
end
