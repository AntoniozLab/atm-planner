class CreateAtms < ActiveRecord::Migration[6.0]
  def change
    create_table :atms do |t|
      t.string :serial_number
      t.string :description
      t.date :manufactoring_date
      t.references :atm_model, null: false, foreign_key: true
      t.references :atm_type, null: false, foreign_key: true
      t.references :atm_state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
