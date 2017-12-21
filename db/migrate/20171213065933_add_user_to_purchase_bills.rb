class AddUserToPurchaseBills < ActiveRecord::Migration[5.1]
  def change
    add_reference :purchase_bills, :user, foreign_key: true
  end
end
