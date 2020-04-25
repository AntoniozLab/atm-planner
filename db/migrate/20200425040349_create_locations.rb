class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :reference_code
      t.string :name
      t.string :address
      t.string :address_reference
      t.string :active_state
      t.references :location_type, null: false, foreign_key: true
      t.references :location_owner, null: false, foreign_key: true
      t.references :district, null: false, foreign_key: true

      t.timestamps
    end
  end
end
