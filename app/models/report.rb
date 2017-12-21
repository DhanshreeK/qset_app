class Report < ApplicationRecord
	scope :list, ->(s, e) \
    { where(date: s..e) }
end
