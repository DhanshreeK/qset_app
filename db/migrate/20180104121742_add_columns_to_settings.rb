class AddColumnsToSettings < ActiveRecord::Migration[5.1]
  def change
    add_column :settings, :export_sale_series, :string
    add_column :settings, :nillrated_sale_series, :string
    add_column :settings, :cd_series, :string
    add_column :settings, :rv_series, :string
    add_column :settings, :jw_series, :string
  end
end
