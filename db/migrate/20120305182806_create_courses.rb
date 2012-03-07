class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.string :duration
      t.string :schedule
      t.string :cost
      t.references :location
      t.references :category
      t.references :subcategory
      t.string :alias

      t.timestamps
    end
    add_index :courses, :location_id
    add_index :courses, :category_id
    add_index :courses, :subcategory_id
  end
end
