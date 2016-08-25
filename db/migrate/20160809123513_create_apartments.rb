class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :street
      t.date :from_date
      t.date :to_date
      t.boolean :to_date_open
      t.boolean :flex_dates
      t.integer :price
      t.boolean :price_neg
      t.boolean :agent_fee
      t.boolean :furnished
      t.boolean :package
      t.decimal :flights
      t.decimal :beds
      t.decimal :baths
      t.text :description

      t.timestamps null: false
    end
  end
end