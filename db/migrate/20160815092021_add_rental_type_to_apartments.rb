class AddRentalTypeToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :rental_type_id, :integer
    add_index :apartments, :rental_type_id
  end
end
