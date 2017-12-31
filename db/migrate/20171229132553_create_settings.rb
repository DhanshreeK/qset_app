class CreateSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :settings do |t|
      t.string :p_series
      t.string :s_series

      t.timestamps
    end
  end
end
