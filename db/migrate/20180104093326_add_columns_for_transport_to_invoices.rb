class AddColumnsForTransportToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :transportation_mode, :string
    add_column :invoices, :vehicle_number, :string
  end
end
