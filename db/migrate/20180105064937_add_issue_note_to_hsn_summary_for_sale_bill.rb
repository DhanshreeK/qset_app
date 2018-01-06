class AddIssueNoteToHsnSummaryForSaleBill < ActiveRecord::Migration[5.1]
  def change
    add_reference :hsn_summary_for_sale_bills, :issue_note, foreign_key: true
  end
end
