class AddCollectionToPlates < ActiveRecord::Migration[7.1]
  def change
    add_reference :plates, :collection, null: false, foreign_key: true
  end
end
