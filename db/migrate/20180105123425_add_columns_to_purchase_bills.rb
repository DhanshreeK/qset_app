class AddColumnsToPurchaseBills < ActiveRecord::Migration[5.1]
  def change
    add_column :purchase_bills, :transportation_mode, :string
    add_column :purchase_bills, :vehicle_number, :string
    add_column :purchase_bills, :rcm, :string
    add_column :purchase_bills, :narration, :string
    add_column :purchase_bills, :terms_and_conditions, :string
  end
end
