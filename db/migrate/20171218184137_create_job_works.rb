class CreateJobWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :job_works do |t|
      t.string :gstin_of_job_worker
      t.string :state
      t.string :challan_no
      t.date :challan_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
