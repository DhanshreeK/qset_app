class AddExpPurchaseToSetting < ActiveRecord::Migration[5.1]
  def change
    add_column :settings, :ExpPurchase, :string
  end
end
