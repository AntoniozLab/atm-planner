class CreateAtmTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :atm_types do |t|
      t.string :name
      t.text :description
      t.references :ATM, null: false, foreign_key: true

      t.timestamps
    end
  end
end
