class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :nom
      t.string :adresse
      t.string :telephone
      t.string :url
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
