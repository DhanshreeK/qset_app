class CreateJobWorkInwards < ActiveRecord::Migration[5.1]
  def change
    create_table :job_work_inwards do |t|
      t.string :gstin_of_job_worker
      t.string :state
      t.string :challan_no
      t.date :challan_date
      t.integer :user_id
      t.string :e_way_bill_no
      t.string :transportation_mode
      t.string :vehicle_no

      t.timestamps
    end
  end
end
