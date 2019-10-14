class RemovePostIdFromCategory < ActiveRecord::Migration[6.0]
  def change
    remove_column :categories, :post_id, :integer
    remove_column :posts, :category_id, :integer
  end
end
