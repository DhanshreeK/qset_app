class AddPosToExportInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :export_invoices, :pos, :string
  end
end
