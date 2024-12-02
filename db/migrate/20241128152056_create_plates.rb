class CreatePlates < ActiveRecord::Migration[7.1]
  def change
    create_table :plates do |t|
      t.string :title
      t.boolean :order

      t.timestamps
    end
  end
end
