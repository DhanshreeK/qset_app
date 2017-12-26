class AddColumnToOtherChallanItems < ActiveRecord::Migration[5.1]
  def change
    add_column :other_challan_items, :other_challan_id, :integer
  end
end
