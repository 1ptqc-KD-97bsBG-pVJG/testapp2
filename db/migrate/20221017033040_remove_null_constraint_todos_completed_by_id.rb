class RemoveNullConstraintTodosCompletedById < ActiveRecord::Migration[7.0]
  def change
    change_column_null :todos, :completed_by_id, true
  end
end
