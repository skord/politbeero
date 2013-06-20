class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :url

      t.timestamps
    end
  end
end
