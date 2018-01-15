class AddColumnToCompositeCdNote < ActiveRecord::Migration[5.1]
  def change
    add_column :composite_cd_notes, :register_type, :string
    add_column :composite_cd_notes, :note_type, :string
  end
end
