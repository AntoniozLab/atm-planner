class CreateAtmStates < ActiveRecord::Migration[6.0]
  def change
    create_table :atm_states do |t|
      t.string :name
      t.references :ATM, null: false, foreign_key: true

      t.timestamps
    end
  end
end
