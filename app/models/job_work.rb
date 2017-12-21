class JobWork < ApplicationRecord
  belongs_to :user, optional:true
  has_many :job_work_items, inverse_of: :job_work, dependent: :destroy
  accepts_nested_attributes_for :job_work_items, reject_if: :all_blank, allow_destroy: true
end
