class AddMarketingCommunicationToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :marketing_communication, :boolean
  end
end
