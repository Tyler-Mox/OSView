class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.decimal :rating
      t.integer :busy_value

      t.timestamps
    end
  end
end
