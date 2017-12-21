class Customer < ApplicationRecord
	belongs_to :party
	scope :shod, ->(id) { where(id: id).take }
	has_many :invoices, dependent: :destroy
	has_many :purchase_bills, dependent: :destroy
	has_many :export_invoices, dependent: :destroy
	has_many :exempt_invoices, dependent: :destroy
	has_many :credit_debit_notes, dependent: :destroy
	belongs_to :user
	# has_many :customer_items
	# has_many :items, through: :customer_items
    # accepts_nested_attributes_for :items, :allow_destroy => true


end
