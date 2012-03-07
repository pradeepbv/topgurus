class CreateLocalities < ActiveRecord::Migration
  def change
    create_table :localities do |t|
      t.references :country
      t.references :state
      t.references :city
      t.string :name
      t.float :lat
      t.float :lon

      t.timestamps
    end
    add_index :localities, :country_id
    add_index :localities, :state_id
    add_index :localities, :city_id
  end
end
