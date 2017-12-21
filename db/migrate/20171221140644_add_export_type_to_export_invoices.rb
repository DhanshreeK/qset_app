class AddExportTypeToExportInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :export_invoices, :export_type, :string
  end
end
