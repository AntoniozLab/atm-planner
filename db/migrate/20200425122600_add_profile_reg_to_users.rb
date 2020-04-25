class AddProfileRegToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :profile, null: false, foreign_key: true, default: 1
  end
end
