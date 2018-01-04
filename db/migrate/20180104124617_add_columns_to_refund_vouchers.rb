class AddColumnsToRefundVouchers < ActiveRecord::Migration[5.1]
  def change
    add_reference :refund_vouchers, :customer, foreign_key: true
    add_column :refund_vouchers, :check_n, :string
  end
end
