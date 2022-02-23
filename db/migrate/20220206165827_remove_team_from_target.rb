class RemoveTeamFromTarget < ActiveRecord::Migration[7.0]
  def change
    remove_column :targets, :team

  end
end
