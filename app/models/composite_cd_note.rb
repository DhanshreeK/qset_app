class CompositeCdNote < ApplicationRecord
  belongs_to :customer
  has_many :composite_cd_note_items, inverse_of: :composite_cd_note, dependent: :destroy
  accepts_nested_attributes_for :composite_cd_note_items, reject_if: :all_blank, allow_destroy: true, :update_only => true
end
