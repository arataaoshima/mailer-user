class ChangeColumnNameOnUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :categoy_id, :category_id
  end
end
