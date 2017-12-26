class AddColumnToJobWorks < ActiveRecord::Migration[5.1]
  def change
    add_column :job_works, :e_way_bill_no, :string
    add_column :job_works, :transportation_mode, :string
    add_column :job_works, :vehicle_no, :string
  end
end
