class AddUserToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :user_id, :integer
  end
end
