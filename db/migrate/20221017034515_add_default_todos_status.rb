class AddDefaultTodosStatus < ActiveRecord::Migration[7.0]
  def change
    change_column :visits, :status, :integer, default: 0
  end
end
