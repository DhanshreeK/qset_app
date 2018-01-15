class AddColumnOfUserToParties < ActiveRecord::Migration[5.1]
  def change
    add_column :parties, :party_type, :string
  end
end
