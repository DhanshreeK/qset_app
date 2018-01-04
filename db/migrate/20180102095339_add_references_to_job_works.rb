class AddReferencesToJobWorks < ActiveRecord::Migration[5.1]
  def change
    add_reference :job_works, :customer, foreign_key: true
  end
end
