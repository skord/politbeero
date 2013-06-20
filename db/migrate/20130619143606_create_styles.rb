class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :styles, :slug, unique: true
  end
end
