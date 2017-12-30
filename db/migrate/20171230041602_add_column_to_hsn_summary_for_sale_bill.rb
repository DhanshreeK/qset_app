class AddColumnToHsnSummaryForSaleBill < ActiveRecord::Migration[5.1]
  def change
    add_column :hsn_summary_for_sale_bills, :total_quantity, :string
  end
end
