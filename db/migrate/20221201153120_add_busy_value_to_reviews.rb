class AddBusyValueToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :busy_value, :integer
  end
end
