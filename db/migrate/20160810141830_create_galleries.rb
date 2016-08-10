class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :picture
      t.integer :apartment_id

      t.timestamps null: false
    end
  end
end
