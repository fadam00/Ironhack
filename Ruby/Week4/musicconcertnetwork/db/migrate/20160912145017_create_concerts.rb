class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.text :artist
      t.text :venue
      t.text :city
      t.datetime :date
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
