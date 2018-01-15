class CreateCompositeCdNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :composite_cd_notes do |t|
      t.references :customer, foreign_key: true
      t.string :refund_voucher_number
      t.string :refund_voucher_date
      t.string :payment_voucher_number
      t.string :pregst
      t.string :document_type
      t.string :reason_for_issuing_document
      t.string :supply_type
      t.string :reverse_charge
      t.string :refund_voucher_value
      t.string :rate
      t.string :taxable_value
      t.string :igst
      t.string :sgst
      t.string :cgst
      t.string :cess
      t.string :total_invoice_value
      t.string :invoice_value

      t.timestamps
    end
  end
end
