class DropWaitTimes < ActiveRecord::Migration[7.0]
  def change
    drop_table :wait_times
  end
end
