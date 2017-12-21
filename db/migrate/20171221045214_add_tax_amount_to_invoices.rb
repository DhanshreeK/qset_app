class AddTaxAmountToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :tax_rate, :string
  end
end
