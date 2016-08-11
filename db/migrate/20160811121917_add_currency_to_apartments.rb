class AddCurrencyToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :currency_id, :integer
    add_index :apartments, :currency_id
  end
end