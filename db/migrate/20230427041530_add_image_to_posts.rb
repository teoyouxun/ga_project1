class AddImageToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :image, :text
    add_column :posts, :content, :text
  end
end
