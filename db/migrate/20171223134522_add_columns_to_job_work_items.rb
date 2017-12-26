class AddColumnsToJobWorkItems < ActiveRecord::Migration[5.1]
  def change
    add_column :job_work_items, :total_amt, :string
  end
end
