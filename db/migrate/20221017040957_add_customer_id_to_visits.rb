class AddCustomerIdToVisits < ActiveRecord::Migration[7.0]
  def change
    add_reference :visits, :customer, foreign_key: {to_table: :users}
  end
end
