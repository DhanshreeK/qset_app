class CreateRefundVouchers < ActiveRecord::Migration[5.1]
  def change
    create_table :refund_vouchers do |t|
      t.string :debit_acc_no
      t.string :to_whom
      t.string :against
      t.string :cash_or_check
      t.string :total_amount

      t.timestamps
    end
  end
end
