class AddUserAgentToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :user_agent, :string
  end
end
