class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.references :country
      t.references :state
      t.references :city
      t.references :locality
      t.string :name
      t.string :alias
      t.float :lat
      t.float :lon

      t.timestamps
    end
    add_index :locations, :country_id
    add_index :locations, :state_id
    add_index :locations, :city_id
    add_index :locations, :locality_id
  end
end
