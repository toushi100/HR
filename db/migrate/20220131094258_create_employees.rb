class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :job
      t.integer :salary
      t.string :employee_status
      t.timestamps
    end
  end
  def down
    drop_table :employees
  end
end
