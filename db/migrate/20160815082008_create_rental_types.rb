class CreateRentalTypes < ActiveRecord::Migration
  def change
    create_table :rental_types do |t|
      t.string :name
      t.text :notes

      t.timestamps null: false
    end
  end
end
