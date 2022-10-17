class ChangeTodosIsCompleteDefaultFalse < ActiveRecord::Migration[7.0]
  def change
    change_column :todos, :is_complete, :boolean, default: false
  end
end
