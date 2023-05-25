# File created 11/29/2022 by Samuel Dominguez
# File edited 12/01/2022 by Samuel Dominguez: added test cases
require "test_helper"

class ReviewTest < ActiveSupport::TestCase
  # Created 12/01/2022 by Samuel Dominguez
  test "no params" do
    review = Review.create
    assert_not review.valid?
  end

  # Created 12/01/2022 by Samuel Dominguez
  test "nil user_id" do
    review = Review.create user_id: nil, location_id: 1
    assert_not review.valid?
  end

  # Created 12/01/2022 by Samuel Dominguez
  test "nil location_id" do
    review = Review.create user_id: 1, location_id: nil
    assert_not review.valid?
  end

  # Created 12/01/2022 by Samuel Dominguez
  test "only user_id and location_id" do
    review = Review.create user_id: 1, location_id: 1
    assert review.valid?
  end

  # Created 12/01/2022 by Samuel Dominguez
  test "Both ids and only rating" do
    review = Review.create user_id: 1, location_id: 1, rating: 1
    assert review.valid?
  end

  # Created 12/01/2022 by Samuel Dominguez
  test "Both ids and only comment" do
    review = Review.create user_id: 1, location_id: 1, comment: "good food"
    assert review.valid?
  end

  # Created 12/01/2022 by Samuel Dominguez
  test "Both ids and only busy_value" do
    review = Review.create user_id: 1, location_id: 1, busy_value: 2
    assert review.valid?
  end

  # Created 12/01/2022 by Samuel Dominguez
  test "All params" do
    review = Review.create user_id: 1, location_id: 1, rating: 1, comment: 2, busy_value: 2
    assert review.valid?
  end

  # Created 12/01/2022 by Samuel Dominguez
  test "invalid user_id" do
    review = Review.create user_id: 100000, location_id: 1, rating: 1, comment: 2, busy_value: 2
    assert_not review.valid?
  end

  # Created 12/01/2022 by Samuel Dominguez
  test "invalid location_id" do
    review = Review.create user_id: 1, location_id: 100000, rating: 1, comment: 2, busy_value: 2
    assert_not review.valid?
  end
end
