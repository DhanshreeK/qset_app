class CreateCompositeCdNoteItems < ActiveRecord::Migration[5.1]
  def change
    create_table :composite_cd_note_items do |t|
      t.references :composite_cd_note, foreign_key: true
      t.references :item, foreign_key: true
      t.string :quantity
      t.string :string
      t.string :net_amt
      t.string :string
      t.string :tax_rate
      t.string :string
      t.string :decimal
      t.string :string
      t.string :tax_amt
      t.string :decimal
      t.string :total_amt
      t.string :string
      t.string :item_descritption
      t.string :string
      t.string :unit_price
      t.string :string

      t.timestamps
    end
  end
end
