class AddRefToHsnSummaryForSaleBill < ActiveRecord::Migration[5.1]
  def change
    add_reference :hsn_summary_for_sale_bills, :invoice, foreign_key: true
  end
end
