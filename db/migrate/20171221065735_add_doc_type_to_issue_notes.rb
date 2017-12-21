class AddDocTypeToIssueNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :issue_notes, :document_type, :string
  end
end
