class AddColumnTotalToB2bComposites < ActiveRecord::Migration[5.1]
  def change
    add_column :b2b_composites, :total_b2b_composite_value, :string
  end
end
