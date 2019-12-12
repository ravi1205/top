class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :category
      t.string :dish_style
      t.string :title
      t.text :desc
      t.integer :spice_level
      t.string :calories
      t.decimal :unit_price

      t.timestamps
    end
  end
end
