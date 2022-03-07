class AddDivisionsToTeams < ActiveRecord::Migration[7.0]
  def change
    add_reference :teams, :divisions
  end
end
