class ReceiptVoucher < ApplicationRecord
  	has_many :receipt_voucher_items, inverse_of: :receipt_voucher, dependent: :destroy
    accepts_nested_attributes_for :receipt_voucher_items, reject_if: :all_blank, allow_destroy: true
    belongs_to :user

    def self.set_receipt_voucher_no
    date = Date.today.strftime('%d')
    if ReceiptVoucher.first.nil?
      'RV' + date.to_s + '1'
    else
      last_id = ReceiptVoucher.last.id.next
      'RV' + date.to_s + last_id.to_s
    end
  end
end
