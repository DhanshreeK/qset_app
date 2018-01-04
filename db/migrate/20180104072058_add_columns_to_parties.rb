class AddColumnsToParties < ActiveRecord::Migration[5.1]
  def change
    add_column :parties, :contact_no, :string
    add_column :parties, :alternate_contact_no, :string
  end
end
