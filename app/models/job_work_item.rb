class JobWorkItem < ApplicationRecord
  belongs_to :item
  belongs_to :job_work
end
