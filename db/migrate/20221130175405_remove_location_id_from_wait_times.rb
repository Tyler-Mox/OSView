class RemoveLocationIdFromWaitTimes < ActiveRecord::Migration[7.0]
  def change
    remove_column :wait_times, :location_id, :integer
  end
end
