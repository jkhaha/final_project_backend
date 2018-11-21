class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.integer :habit_id
      t.boolean :completed_status
      t.datetime :date_time

      t.timestamps
    end
  end
end
