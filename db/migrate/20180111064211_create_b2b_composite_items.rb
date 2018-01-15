class CreateB2bCompositeItems < ActiveRecord::Migration[5.1]
  def change
    create_table :b2b_composite_items do |t|
      t.references :b2b_composite, foreign_key: true
      t.references :item, foreign_key: true
      t.string :quantity
      t.string :net_amt
      t.string :tax_rate
      t.string :decimal
      t.decimal :tax_amt
      t.string :total_amt
      t.string :item_descritption
      t.string :unit_price

      t.timestamps
    end
  end
end
