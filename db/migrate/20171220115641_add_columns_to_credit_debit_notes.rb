class AddColumnsToCreditDebitNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :credit_debit_notes, :invoice_value, :string
    add_column :credit_debit_notes, :cess, :string
    add_column :credit_debit_notes, :total_invoice_value, :string
  end
end
