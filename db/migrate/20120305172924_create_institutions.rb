class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :alias
      t.references :location

      t.timestamps
    end
    add_index :institutions, :location_id
  end
end
