class AddColumnToB2bComposites < ActiveRecord::Migration[5.1]
  def change
    add_column :b2b_composites, :b2b_composite_value, :string
    add_column :b2b_composites, :tax_rate, :string
  end
end
