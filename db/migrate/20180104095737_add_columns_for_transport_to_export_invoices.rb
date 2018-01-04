class AddColumnsForTransportToExportInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :export_invoices, :transportation_mode, :string
    add_column :export_invoices, :vehicle_number, :string
    add_column :export_invoices, :narration, :string
    add_column :export_invoices, :terms_and_conditions, :string
  end
end
