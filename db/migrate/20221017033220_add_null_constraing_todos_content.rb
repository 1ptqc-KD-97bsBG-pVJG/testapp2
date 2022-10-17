class AddNullConstraingTodosContent < ActiveRecord::Migration[7.0]
  def change
    change_column_null :todos, :content, false
  end
end
