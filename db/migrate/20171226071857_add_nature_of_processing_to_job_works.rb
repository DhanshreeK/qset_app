class AddNatureOfProcessingToJobWorks < ActiveRecord::Migration[5.1]
  def change
    add_column :job_works, :nature_of_processing, :string
  end
end
