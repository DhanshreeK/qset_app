class AddColumnToRefundVouchers < ActiveRecord::Migration[5.1]
  def change
    add_column :refund_vouchers, :date, :string
    add_column :refund_vouchers, :voucher_no, :string
  end
end
