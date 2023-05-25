class AddLocationToWaitTimes < ActiveRecord::Migration[7.0]
  def change
    add_reference :wait_times, :location, null: false, foreign_key: true
  end
end
