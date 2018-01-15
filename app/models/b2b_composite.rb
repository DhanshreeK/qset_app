class B2bComposite < ApplicationRecord
	belongs_to :customer
	belongs_to :user, optional:true
	has_many :b2b_composite_items, inverse_of: :b2b_composite, dependent: :destroy
	accepts_nested_attributes_for :b2b_composite_items, reject_if: :all_blank, allow_destroy: true, :update_only => true
end
