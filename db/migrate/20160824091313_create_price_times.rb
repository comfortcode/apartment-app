class CreatePriceTimes < ActiveRecord::Migration
  def change
    create_table :price_times do |t|
      t.string :name
      t.text :notes

      t.timestamps null: false
    end
  end
end
