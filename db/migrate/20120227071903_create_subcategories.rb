class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :title
      t.string :description
      t.string :alias
      t.references :category

      t.timestamps
    end
    add_index :subcategories, :category_id
  end
end
