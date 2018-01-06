class Item < ApplicationRecord
	scope :shod, ->(id) { where(id: id).take }
	belongs_to :unit_of_measure
	belongs_to :user

	 filterrific(
   default_filter_params: { sorted_by: 'created_at_desc' },
   available_filters: [
     :sorted_by,
     :search_query,
     :with_item_id,
     :with_created_at
   ]
 )
end
