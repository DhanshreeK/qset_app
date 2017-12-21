class AddDocTypeToCreditDebitNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :credit_debit_notes, :document_type, :string
  end
end
