class CreateHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :habits do |t|
      t.integer :user_id
      t.string :description
      t.string :cue
      t.string :routine
      t.string :reward

      t.timestamps
    end
  end
end
