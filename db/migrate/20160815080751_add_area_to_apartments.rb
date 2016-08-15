class AddAreaToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :area_id, :integer
    add_index :apartments, :area_id
  end
end
