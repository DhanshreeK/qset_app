class AddTotalAmtToJobWorks < ActiveRecord::Migration[5.1]
  def change
    add_column :job_works, :total_amt, :string
  end
end
