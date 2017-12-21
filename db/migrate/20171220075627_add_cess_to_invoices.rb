class AddCessToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :cess, :string
  end
end
