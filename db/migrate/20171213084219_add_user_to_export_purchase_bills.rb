class AddUserToExportPurchaseBills < ActiveRecord::Migration[5.1]
  def change
    add_reference :export_purchase_bills, :user, foreign_key: true
  end
end
