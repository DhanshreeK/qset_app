class RefundVoucher < ApplicationRecord
	has_many :refund_voucher_items, inverse_of: :refund_voucher, dependent: :destroy
  accepts_nested_attributes_for :refund_voucher_items, reject_if: :all_blank, allow_destroy: true
  belongs_to :user

    def self.set_refund_voucher_no
    date = Date.today.strftime('%d')
    if RefundVoucher.first.nil?
      'PV' + date.to_s + '1'
    else
      last_id = RefundVoucher.last.id.next
      'PV' + date.to_s + last_id.to_s
    end
  end

end
