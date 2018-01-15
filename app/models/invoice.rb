class Invoice < ApplicationRecord
	belongs_to :customer 
  has_many :invoice_items, inverse_of: :invoice, dependent: :destroy
  accepts_nested_attributes_for :invoice_items, reject_if: :all_blank, allow_destroy: true, :update_only => true
  scope :shod, ->(id) { where(id: id).take }
  validates :gstr_holder, presence:true
  has_many :hsn_summary_for_sale_bills, dependent: :destroy
  after_create :add_hsn_summary

  def self.set_invoice_no
    date = Date.today.strftime('%d')
    if Invoice.first.nil?
      Setting.first.s_series + date.to_s + '1'
    else
      last_id = Invoice.last.id.next
      Setting.first.s_series + date.to_s + last_id.to_s
    end
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |invoice|
        csv << invoice.attributes.values_at(*column_names)
      end
    end
  end

  def add_hsn_summary
    self.invoice_items.each do |s|
   hsn = HsnSummaryForSaleBill.create!(hsn_no: s.item.item_hsn_no,description: s.item.dogns, uqc: s.item.unit_of_measure.name, total_value: s.total_amt, taxable_value: s.net_amt, cgst: s.item.cgst, igst: s.item.igst, sgst: s.item.sgst, invoice_id: self.id, cess: self.total_invoice_value, total_quantity: s.quantity)
  end
end

end

