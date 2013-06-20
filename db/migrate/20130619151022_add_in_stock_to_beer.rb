class AddInStockToBeer < ActiveRecord::Migration
  def change
    add_column :beers, :in_stock, :boolean, default: false
  end
end
