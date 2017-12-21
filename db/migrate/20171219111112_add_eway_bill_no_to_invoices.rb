class AddEwayBillNoToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :ebay_bill_no, :string
  end
end
