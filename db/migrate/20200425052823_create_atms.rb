class CreateAtms < ActiveRecord::Migration[6.0]
  def change
    create_table :atms do |t|
      t.string :serial_number
      t.string :description
      t.date :manufacturing_date

      t.timestamps
    end
  end
end
