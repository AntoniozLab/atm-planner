class DropTableRequerimientos < ActiveRecord::Migration[6.0]
  def change
    # drop_table :requerimientos
    drop_table(:requerimientos, force: true) if ActiveRecord::Base.connection.tables.include?('requerimientos')
  end
end
