class AddColumnItemCodeToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :item_code, :string
  end
end
