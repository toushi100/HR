class ChangeMembersToArray < ActiveRecord::Migration[7.0]
  def change
    change_column :teams, :members, :text, array: true
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
