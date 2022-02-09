class AddEmployeesToDivision < ActiveRecord::Migration[7.0]
  def change
    add_reference :divisions, :employees
  end
end
