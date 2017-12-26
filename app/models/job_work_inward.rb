class JobWorkInward < ApplicationRecord
  belongs_to :user, optional:true
  has_many :job_work_inward_items, inverse_of: :job_work_inward, dependent: :destroy
  accepts_nested_attributes_for :job_work_inward_items, reject_if: :all_blank, allow_destroy: true
end
