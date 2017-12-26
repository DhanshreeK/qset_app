class CreateJobWorkInwardItems < ActiveRecord::Migration[5.1]
  def change
    create_table :job_work_inward_items do |t|
      t.string :taxable_value
      t.string :unit_price
      t.string :quantity
      t.string :types_of_goods
      t.string :integrated_tax_rate
      t.string :string
      t.string :central_tax_rate
      t.string :state_tax_rate
      t.string :cess
      t.string :item_id
      t.string :integer
      t.integer :job_work_inward_id
      t.string :total_amt

      t.timestamps
    end
  end
end
