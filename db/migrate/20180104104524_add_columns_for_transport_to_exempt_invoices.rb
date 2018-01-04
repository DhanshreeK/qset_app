class AddColumnsForTransportToExemptInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :exempt_invoices, :transportation_mode, :string
    add_column :exempt_invoices, :vehicle_number, :string
    add_column :exempt_invoices, :narration, :string
    add_column :exempt_invoices, :terms_and_conditions, :string
  end
end
