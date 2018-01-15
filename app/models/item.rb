class Item < ApplicationRecord
	scope :shod, ->(id) { where(id: id).take }
	belongs_to :unit_of_measure
	belongs_to :user
end
