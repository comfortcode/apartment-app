class AddPriceTimeToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :price_time_id, :integer
    add_index :apartments, :price_time_id
  end
end
