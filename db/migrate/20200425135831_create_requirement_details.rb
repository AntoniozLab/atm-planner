class CreateRequirementDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :requirement_details do |t|
      t.string :description
      t.date :start_date
      t.date :end_date
      t.string :cancel_observation
      t.integer :atm_new
      t.integer :atm_old
      t.references :requirement, null: false, foreign_key: true
      t.references :requirement_type, null: false, foreign_key: true
      t.references :requirement_detail_state, null: false, foreign_key: true
      t.references :requirement_detail_reason, null: false, foreign_key: true

      t.timestamps
    end
  end
end
