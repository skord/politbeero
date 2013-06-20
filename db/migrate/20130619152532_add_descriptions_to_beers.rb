class AddDescriptionsToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :short_description, :string
    add_column :beers, :description, :text
  end
end
