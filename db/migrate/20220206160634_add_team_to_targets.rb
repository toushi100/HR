class AddTeamToTargets < ActiveRecord::Migration[7.0]
  def change
    add_reference :targets, :team
  end
end
