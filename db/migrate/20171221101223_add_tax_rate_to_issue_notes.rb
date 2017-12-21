class AddTaxRateToIssueNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :issue_notes, :tax_rate, :string
  end
end
