class AddDuesToParties < ActiveRecord::Migration[5.1]
  def change
    add_column :parties, :joining_date, :date
    add_column :parties, :due_date, :date
  end
end
