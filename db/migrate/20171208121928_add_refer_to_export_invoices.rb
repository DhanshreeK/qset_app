class AddReferToExportInvoices < ActiveRecord::Migration[5.1]
  def change
    add_reference :export_invoices, :user, foreign_key: true
  end
end
