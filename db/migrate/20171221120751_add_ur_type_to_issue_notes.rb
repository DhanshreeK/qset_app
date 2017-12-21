class AddUrTypeToIssueNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :issue_notes, :ur_types, :string
  end
end
