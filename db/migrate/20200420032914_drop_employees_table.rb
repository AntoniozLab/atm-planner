class DropEmployeesTable < ActiveRecord::Migration[6.0]
  def change
    drop_table(:employees, force: true) if ActiveRecord::Base.connection.tables.include?('employees')
  end
end
