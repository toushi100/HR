class AddTeamsToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :teams
  end
end
