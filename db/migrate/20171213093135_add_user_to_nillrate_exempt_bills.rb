class AddUserToNillrateExemptBills < ActiveRecord::Migration[5.1]
  def change
    add_reference :nillrate_exempt_bills, :user, foreign_key: true
  end
end
