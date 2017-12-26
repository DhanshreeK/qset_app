class CreateOtherChallanItems < ActiveRecord::Migration[5.1]
  def change
    create_table :other_challan_items do |t|
      t.string :taxable_value
      t.string :unit_price
      t.string :quantity
      t.string :integrated_tax_rate
      t.string :string
      t.string :string
      t.string :string
      t.string :central_tax_rate
      t.string :state_tax_rate
      t.string :cess
      t.string :item_id
      t.string :integer
      t.string :job_work_inward_id
      t.string :integer
      t.string :total_amt
      t.string :string

      t.timestamps
    end
  end
end
