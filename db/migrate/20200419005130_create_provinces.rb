class CreateProvinces < ActiveRecord::Migration[6.0]
  def change
    create_table :provinces do |t|
      t.string :name
      t.string :ubigeo
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
