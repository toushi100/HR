class CreateDivision < ActiveRecord::Migration[7.0]
  def change
    create_table :divisions do |t|
      t.string :name
      t.string :description
      t.string :teams
      t.string :manager
      t.timestamps
    end
  end
  def down
    drop_table :divisions
  end
end
