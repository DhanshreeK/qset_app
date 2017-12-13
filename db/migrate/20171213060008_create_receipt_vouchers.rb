class CreateReceiptVouchers < ActiveRecord::Migration[5.1]
  def change
    create_table :receipt_vouchers do |t|
      t.string :debit_acc_no
      t.string :to_whom
      t.string :against
      t.string :cash_or_check
      t.string :total_amount
      t.string :voucher_no
      t.date :date

      t.timestamps
    end
  end
end
