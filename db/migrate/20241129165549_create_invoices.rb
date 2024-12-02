class CreateInvoices < ActiveRecord::Migration[7.1]
  def change
    create_table :invoices do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.integer :from

      t.timestamps
    end
  end
end
