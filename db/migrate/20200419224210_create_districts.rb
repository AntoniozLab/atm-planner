class CreateDistricts < ActiveRecord::Migration[6.0]
  def change
    create_table :districts do |t|
      t.string :name
      t.string :ubigeo
      t.references :province, null: false, foreign_key: true

      t.timestamps
    end
  end
end
