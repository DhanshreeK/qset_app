class AddReferencesToCreditDebitNotes < ActiveRecord::Migration[5.1]
  def change
    add_reference :credit_debit_notes, :user, foreign_key: true
  end
end
