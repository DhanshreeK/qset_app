class AddColumnsForNarrationsToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :narration, :string
    add_column :invoices, :terms_and_conditions, :string
  end
end
