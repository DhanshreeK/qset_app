class CreateOtherChallans < ActiveRecord::Migration[5.1]
  def change
    create_table :other_challans do |t|
      t.string :state
      t.string :string
      t.string :challan_no
      t.date :challan_date
      t.integer :user_id
      t.string :to_whom
      t.string :nature_of_processing

      t.timestamps
    end
  end
end
