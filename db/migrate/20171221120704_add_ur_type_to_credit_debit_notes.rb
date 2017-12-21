class AddUrTypeToCreditDebitNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :credit_debit_notes, :ur_types, :string
  end
end
