class CreateLocationContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :location_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :position_name
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
