class AddOrderToPlates < ActiveRecord::Migration[7.1]
  def change
    add_column :plates, :order, :integer
  end
end
