class CreateHsnSummaryForSaleBills < ActiveRecord::Migration[5.1]
  def change
    create_table :hsn_summary_for_sale_bills do |t|
      t.string :hsn_no
      t.string :description
      t.string :uqc
      t.string :total_value
      t.string :taxable_value
      t.string :igst
      t.string :cgst
      t.string :sgst
      t.string :cess

      t.timestamps
    end
  end
end
