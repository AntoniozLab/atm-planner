class CreateRequirementDetailReasons < ActiveRecord::Migration[6.0]
  def change
    create_table :requirement_detail_reasons do |t|
      t.string :name

      t.timestamps
    end
  end
end
