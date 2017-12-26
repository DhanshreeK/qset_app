class AddNatureOfProcessingToJobWorkInwards < ActiveRecord::Migration[5.1]
  def change
    add_column :job_work_inwards, :nature_of_processing, :string
  end
end
