class RemoveUserIdFromWaitTimes < ActiveRecord::Migration[7.0]
  def change
    remove_column :wait_times, :user_id, :integer
  end
end
