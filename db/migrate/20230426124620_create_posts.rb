class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title
      t.integer :user_id
      t.integer :post_id
      
      

      t.timestamps
    end
  end
end


# t.text :image
#       t.text :content