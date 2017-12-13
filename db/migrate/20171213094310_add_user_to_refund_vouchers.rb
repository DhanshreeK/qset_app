class AddUserToRefundVouchers < ActiveRecord::Migration[5.1]
  def change
    add_reference :refund_vouchers, :user, foreign_key: true
  end
end
