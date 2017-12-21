class AddColToExportInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :export_invoices, :port_code, :string
    add_column :export_invoices, :shipping_bill_no, :string
    add_column :export_invoices, :shipping_bill_date, :string
  end
end
