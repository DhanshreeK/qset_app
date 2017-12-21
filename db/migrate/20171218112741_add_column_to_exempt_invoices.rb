class AddColumnToExemptInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :exempt_invoices, :exempt_invoice_value, :string
  end
end
