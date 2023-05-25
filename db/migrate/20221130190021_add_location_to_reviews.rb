class AddLocationToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :location, null: false, foreign_key: true
  end
end
