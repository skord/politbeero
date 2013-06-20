class AddDistributionToBrewery < ActiveRecord::Migration
  def change
    add_column :breweries, :distribution, :string
  end
end
