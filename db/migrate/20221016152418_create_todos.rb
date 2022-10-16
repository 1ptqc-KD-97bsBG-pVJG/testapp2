class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.references :visit, null: false, foreign_key: true
      t.text :content
      t.boolean :is_complete
      t.references :completed_by, null: false, foreign_key: {to_table: :users}
      t.datetime :completed_time

      t.timestamps
    end
  end
end
