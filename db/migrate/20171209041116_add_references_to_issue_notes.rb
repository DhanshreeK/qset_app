class AddReferencesToIssueNotes < ActiveRecord::Migration[5.1]
  def change
    add_reference :issue_notes, :user, foreign_key: true
  end
end
