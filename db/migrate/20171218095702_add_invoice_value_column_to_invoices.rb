class AddInvoiceValueColumnToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :invoice_value, :string
  end
end
