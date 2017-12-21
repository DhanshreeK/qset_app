class CreateJobWorkItems < ActiveRecord::Migration[5.1]
  def change
    create_table :job_work_items do |t|
      t.string :taxable_value
      t.string :unit_price
      t.string :quantity
      t.string :types_of_goods
      t.string :integrated_tax_rate
      t.string :central_tax_rate
      t.string :state_tax_rate
      t.string :cess
      t.references :item, foreign_key: true
      t.references :job_work, foreign_key: true

      t.timestamps
    end
  end
end
