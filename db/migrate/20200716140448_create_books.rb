class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :description
      t.string :background
      t.boolean :available

      t.timestamps
    end
  end
end
