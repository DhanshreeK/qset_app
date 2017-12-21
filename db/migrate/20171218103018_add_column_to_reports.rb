class AddColumnToReports < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :gstr_type, :string
  end
end
