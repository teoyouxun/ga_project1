class AddNationalityToFollowers < ActiveRecord::Migration[5.2]
  def change
    add_column :followers, :nationality, :text
    add_column :followers, :dob, :text
  end
end
