class DropTableRequerimientos < ActiveRecord::Migration[6.0]
  def change
    drop_table :requerimientos
  end
end
