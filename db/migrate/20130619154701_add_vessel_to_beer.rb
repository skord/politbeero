class AddVesselToBeer < ActiveRecord::Migration
  def change
    add_column :beers, :vessel, :string
  end
end
