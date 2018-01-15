class CreateB2bComposites < ActiveRecord::Migration[5.1]
  def change
    create_table :b2b_composites do |t|
      t.string :gstin_of_supplier
      t.string :invoice_number
      t.date :invoice_date
      t.string :place_of_supply
      t.string :rcm
      t.string :invoice_type
      t.string :rate
      t.string :taxable_value
      t.string :igst
      t.string :cgst
      t.string :sgst
      t.string :cess
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
