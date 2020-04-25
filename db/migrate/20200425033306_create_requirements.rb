class CreateRequirements < ActiveRecord::Migration[6.0]
  def change
    create_table :requirements do |t|
      t.string :description
      t.date :request_date
      t.date :completion_date
      t.decimal :percentage_success
      t.integer :user_assigned
      t.string :attachment_url
      t.references :user, null: false, foreign_key: true
      t.references :requirement_state, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
