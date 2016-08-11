class AddUserToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :user_id, :integer
    add_index :apartments, :user_id
  end
end
