class JobWork < ApplicationRecord
  belongs_to :user, optional:true
  has_many :job_work_items, inverse_of: :job_work, dependent: :destroy
  accepts_nested_attributes_for :job_work_items, reject_if: :all_blank, allow_destroy: true
  after_create :add_hsn_summary

   def add_hsn_summary
    self.job_work_items.each do |s|
   hsn = HsnSummaryForPurchaseBill.create!(hsn_no: s.item.item_hsn_no,description: s.item.dogns, uqc: s.item.unit_of_measure.name, total_value: s.total_amt, taxable_value: s.total_amt, cgst: s.item.cgst, igst: s.item.igst, sgst: s.item.sgst, total_quantity: s.quantity)
  end
  end
end
