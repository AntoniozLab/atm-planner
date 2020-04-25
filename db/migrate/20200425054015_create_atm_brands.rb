class CreateAtmBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :atm_brands do |t|
      t.string :name
      t.text :description
      t.references :atm_models, null: false, foreign_key: true

      t.timestamps
    end
  end
end
