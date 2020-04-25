class CreateAtmModels < ActiveRecord::Migration[6.0]
  def change
    create_table :atm_models do |t|
      t.string :name
      t.string :description
      t.references :atm_brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
