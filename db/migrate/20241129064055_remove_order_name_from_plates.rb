class RemoveOrderNameFromPlates < ActiveRecord::Migration[7.1]
  def change
    remove_column :plates, :order, :boolean
  end
end
