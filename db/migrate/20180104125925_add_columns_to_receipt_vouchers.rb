class AddColumnsToReceiptVouchers < ActiveRecord::Migration[5.1]
  def change
    add_reference :receipt_vouchers, :customer, foreign_key: true
    add_column :receipt_vouchers, :check_no, :string
  end
end
