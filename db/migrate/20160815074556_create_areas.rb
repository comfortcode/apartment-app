class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.text :notes

      t.timestamps null: false
    end
  end
end
