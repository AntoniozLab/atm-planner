class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.String :name
      t.String :type
      t.String :description
    end
  end
end
