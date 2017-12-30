class ExemptInvoice < ApplicationRecord
  belongs_to :customer
  belongs_to :user
  has_many :exempt_invoice_items, inverse_of: :exempt_invoice, dependent: :destroy
  accepts_nested_attributes_for :exempt_invoice_items, reject_if: :all_blank, allow_destroy: true
  scope :shod, ->(id) { where(id: id).take }
  after_create :add_hsn_summary

  def self.set_invoice_no
    date = Date.today.strftime('%d')
    if ExemptInvoice.first.nil?
      'EXEMPT' + date.to_s + '1'
    else
      last_id = ExemptInvoice.last.id.next
      'EXEMPT' + date.to_s + last_id.to_s
    end
  end

  def add_hsn_summary
    self.exempt_invoice_items.each do |s|
   hsn = HsnSummaryForSaleBill.create!(hsn_no: s.item.item_hsn_no,description: s.item.dogns, uqc: s.item.unit_of_measure.name, total_value: s.total_amt, taxable_value: s.net_amt, cgst: s.item.cgst, igst: s.item.igst, sgst: s.item.sgst,total_quantity: s.quantity)
  end
end

end
