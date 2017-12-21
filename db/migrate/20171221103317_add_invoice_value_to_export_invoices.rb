class AddInvoiceValueToExportInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :export_invoices, :invoice_value, :string
  end
end
