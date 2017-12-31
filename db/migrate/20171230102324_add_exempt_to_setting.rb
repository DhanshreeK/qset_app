class AddExemptToSetting < ActiveRecord::Migration[5.1]
  def change
    add_column :settings, :Exempt, :string
  end
end
