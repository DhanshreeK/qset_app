class AddColumnsToIssueNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :issue_notes, :invoice_value, :string
    add_column :issue_notes, :cess, :string
    add_column :issue_notes, :total_invoice_value, :string
  end
end
