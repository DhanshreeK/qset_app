class AddColumnRcmToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :rcm, :string
  end
end
