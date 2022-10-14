class CreateVisits < ActiveRecord::Migration[7.0]
  def change
    create_table :visits do |t|
      t.integer :status
      t.date :scheduled_date
      t.time :scheduled_start
      t.time :scheduled_end
      t.integer :scheduled_dudes

      t.timestamps
    end
  end
end
