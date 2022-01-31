class CreateTargets < ActiveRecord::Migration[7.0]
  def change
    create_table :targets do |t|
      t.string :title
      t.string :description
      t.date :start_date
      t.date :finish_date
      t.string :team
      t.string :status
      t.timestamps
    end
  end

  def down
    drop_table :targets
  end
end
