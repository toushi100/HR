class RemoveTeamsFrom < ActiveRecord::Migration[7.0]
  def change
    remove_column :divisions, :teams
  end
end
