class CreateTimeEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :time_entries do |t|
      t.references :user, null: false, foreign_key: true
      t.references :visit, null: false, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.integer :status, default: 0
      t.boolean :predicted, default: False

      t.timestamps
    end
  end
end
