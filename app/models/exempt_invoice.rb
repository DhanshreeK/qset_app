class ExemptInvoice < ApplicationRecord
  belongs_to :customer
  belongs_to :user
  has_many :exempt_invoice_items, inverse_of: :exempt_invoice, dependent: :destroy
  accepts_nested_attributes_for :exempt_invoice_items, reject_if: :all_blank, allow_destroy: true
  scope :shod, ->(id) { where(id: id).take }

  def self.set_invoice_no
    date = Date.today.strftime('%d')
    if ExemptInvoice.first.nil?
      Setting.first.Exempt + date.to_s + '1'
    else
      last_id = ExemptInvoice.last.id.next
      Setting.first.Exempt + date.to_s + last_id.to_s
    end
  end
end
