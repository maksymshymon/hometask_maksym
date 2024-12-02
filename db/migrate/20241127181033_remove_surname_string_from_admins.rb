class RemoveSurnameStringFromAdmins < ActiveRecord::Migration[7.1]
  def change
    remove_column :admins, :surname_string, :string
  end
end
