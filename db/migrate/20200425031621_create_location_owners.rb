class CreateLocationOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :location_owners do |t|
      t.string :name
      t.string :business_name
      t.string :document_number

      t.timestamps
    end
  end
end
