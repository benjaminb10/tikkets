class AddUrlToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :url, :string
  end
end