class ChangeTypeBookCategoryIdForInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :books, :category_id, 'integer USING CAST(category_id AS integer)'
    add_index  :books, :category_id
  end
end
