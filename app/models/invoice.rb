class Invoice < ApplicationRecord
	belongs_to :customer 
  has_many :invoice_items, inverse_of: :invoice, dependent: :destroy
  accepts_nested_attributes_for :invoice_items, reject_if: :all_blank, allow_destroy: true
  scope :shod, ->(id) { where(id: id).take }
  validates :gstr_holder, presence:true

  def self.set_invoice_no
    date = Date.today.strftime('%d')
    if Invoice.first.nil?
      'S' + date.to_s + '1'
    else
      last_id = Invoice.last.id.next
      'S' + date.to_s + last_id.to_s
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


end

