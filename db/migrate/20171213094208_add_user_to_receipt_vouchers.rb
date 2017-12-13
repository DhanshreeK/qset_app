class AddUserToReceiptVouchers < ActiveRecord::Migration[5.1]
  def change
    add_reference :receipt_vouchers, :user, foreign_key: true
  end
end
