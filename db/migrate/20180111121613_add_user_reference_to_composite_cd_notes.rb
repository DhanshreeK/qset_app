class AddUserReferenceToCompositeCdNotes < ActiveRecord::Migration[5.1]
  def change
    add_reference :composite_cd_notes, :user, foreign_key: true
  end
end
