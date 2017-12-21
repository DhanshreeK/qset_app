class CreateRefundVoucherItems < ActiveRecord::Migration[5.1]
  def change
    create_table :refund_voucher_items do |t|
      t.string :details
      t.string :amount
      t.string :total
      t.references :refund_voucher, foreign_key: true

      t.timestamps
    end
  end
end
