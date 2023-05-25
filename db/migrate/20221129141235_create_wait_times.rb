class CreateWaitTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :wait_times do |t|
      t.integer :user_id
      t.integer :location_id
      t.integer :busy_value

      t.timestamps
    end
  end
end
