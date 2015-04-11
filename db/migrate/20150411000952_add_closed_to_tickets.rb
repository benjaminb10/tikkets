class AddClosedToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :closed, :boolean, null: false, default: false
  end
end
