class NillrateExemptBill < ApplicationRecord
  belongs_to :customer
  belongs_to :user
  has_many :nillrate_exempt_bill_items, inverse_of: :nillrate_exempt_bill, dependent: :destroy
  accepts_nested_attributes_for :nillrate_exempt_bill_items, reject_if: :all_blank, allow_destroy: true
  scope :shod, ->(id) { where(id: id).take }
  after_create :add_hsn_summary

  def self.set_purchase_no
    date = Date.today.strftime('%d')
    if NillrateExemptBill.first.nil?
      'P' + date.to_s + '1'
    else
      last_id = NillrateExemptBill.last.id.next
      'P' + date.to_s + last_id.to_s
    end
  end

  def add_hsn_summary
    self.nillrate_exempt_bill_items.each do |s|
    hsn = HsnSummaryForPurchaseBill.create!(hsn_no: s.item.item_hsn_no,description: s.item.dogns, uqc: s.item.unit_of_measure.name, total_value: s.total_amt, taxable_value: s.net_amount, cgst: s.item.cgst, igst: s.item.igst, sgst: s.item.sgst, total_quantity: s.quantity)
  end
  end


end
