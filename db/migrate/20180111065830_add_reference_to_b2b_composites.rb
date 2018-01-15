class AddReferenceToB2bComposites < ActiveRecord::Migration[5.1]
  def change
    add_reference :b2b_composites, :user, foreign_key: true
  end
end
