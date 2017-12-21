class AddTotalInvoiceValueToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :total_invoice_value, :string
  end
end
