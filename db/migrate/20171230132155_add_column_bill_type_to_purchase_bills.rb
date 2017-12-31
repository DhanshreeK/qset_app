class AddColumnBillTypeToPurchaseBills < ActiveRecord::Migration[5.1]
  def change
    add_column :purchase_bills, :bill_type, :string
  end
end
