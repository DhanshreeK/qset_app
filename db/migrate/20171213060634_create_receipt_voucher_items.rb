class CreateReceiptVoucherItems < ActiveRecord::Migration[5.1]
  def change
    create_table :receipt_voucher_items do |t|
      t.string :details
      t.string :amount
      t.references :receipt_voucher, foreign_key: true

      t.timestamps
    end
  end
end
