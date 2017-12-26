class OtherChallan < ApplicationRecord
	belongs_to :user, optional:true
    has_many :other_challan_items, inverse_of: :other_challan, dependent: :destroy
    accepts_nested_attributes_for :other_challan_items, reject_if: :all_blank, allow_destroy: true
end