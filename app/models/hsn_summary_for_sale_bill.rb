class HsnSummaryForSaleBill < ApplicationRecord
	belongs_to :invoice
  belongs_to :issue_note
	scope :shod, ->(id) { where(id: id).take }
	  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |invoice|
        csv << invoice.attributes.values_at(*column_names)
      end
    end
  end
end