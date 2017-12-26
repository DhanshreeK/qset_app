class AddPartyStatusToParties < ActiveRecord::Migration[5.1]
  def change
    add_column :parties, :party_status, :boolean, default: false
  end
end
