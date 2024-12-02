class CreateCollections < ActiveRecord::Migration[7.1]
  def change
    create_table :collections do |t|
      t.string :title
      t.text :description
      t.boolean :publish

      t.timestamps
    end
  end
end
