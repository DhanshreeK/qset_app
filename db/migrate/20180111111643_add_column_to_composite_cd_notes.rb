class AddColumnToCompositeCdNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :composite_cd_notes, :advance_payment_voucher_number, :string
    add_column :composite_cd_notes, :advance_voaucher_date, :date
    add_column :composite_cd_notes, :inward_supply_type, :string
  end
end
