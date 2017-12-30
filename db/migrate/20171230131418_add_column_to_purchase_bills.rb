class AddColumnToPurchaseBills < ActiveRecord::Migration[5.1]
  def change
    add_column :purchase_bills, :type, :string
    add_column :purchase_bills, :pos, :string
  end
end
