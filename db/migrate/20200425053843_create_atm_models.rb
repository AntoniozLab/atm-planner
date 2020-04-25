class CreateAtmModels < ActiveRecord::Migration[6.0]
  def change
    create_table :atm_models do |t|
      t.string :name
      t.text :description
      t.references :ATM, null: false, foreign_key: true

      t.timestamps
    end
  end
end
