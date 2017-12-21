class AddPosToExemptInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :exempt_invoices, :pos, :string
  end
end
