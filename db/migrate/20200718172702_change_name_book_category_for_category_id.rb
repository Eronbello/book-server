class ChangeNameBookCategoryForCategoryId < ActiveRecord::Migration[6.0]
  def change
    rename_column :books, :category, :category_id
  end
end
