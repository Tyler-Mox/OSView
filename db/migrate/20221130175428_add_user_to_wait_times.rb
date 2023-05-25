class AddUserToWaitTimes < ActiveRecord::Migration[7.0]
  def change
    add_reference :wait_times, :user, null: false, foreign_key: true
  end
end
