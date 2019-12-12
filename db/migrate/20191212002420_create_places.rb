class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :country
      t.string :capital
      t.string :president
      t.string :population

      t.timestamps
    end
  end
end
