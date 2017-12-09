class AddReferToExemptInvoices < ActiveRecord::Migration[5.1]
  def change
    add_reference :exempt_invoices, :user, foreign_key: true
  end
end
