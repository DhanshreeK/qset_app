class AddCaStatusToChartedAccountants < ActiveRecord::Migration[5.1]
  def change
    add_column :charted_accountants, :ca_status, :boolean, default: false
  end
end
