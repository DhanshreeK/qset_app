class ExportPurchaseBill < ApplicationRecord
  belongs_to :customer
  belongs_to :user
  has_many :export_purchase_bill_items, inverse_of: :export_purchase_bill, dependent: :destroy
  accepts_nested_attributes_for :export_purchase_bill_items, reject_if: :all_blank, allow_destroy: true
  scope :shod, ->(id) { where(id: id).take }
  after_create :add_hsn_summary


    def self.set_purchase_no
    date = Date.today.strftime('%d')
    if ExportPurchaseBill.first.nil?
      'EXP' + date.to_s + '1'
    else
      last_id = ExportPurchaseBill.last.id.next
      'EXP' + date.to_s + last_id.to_s
    end
  end


   def add_hsn_summary
    self.export_purchase_bill_items.each do |s|
   hsn = HsnSummaryForPurchaseBill.create!(hsn_no: s.item.item_hsn_no,description: s.item.dogns, uqc: s.item.unit_of_measure.name, total_value: s.total_amt, taxable_value: s.net_amount, cgst: s.item.cgst, igst: s.item.igst, sgst: s.item.sgst, total_quantity: s.quantity)
  end
  end


end
