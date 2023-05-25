# File created 11/27/2022 by Samuel Dominguez
require "test_helper"

class BenefitTest < ActiveSupport::TestCase
  # Created 11/27/2022 by Samuel Dominguez
  test "no params" do
    benefit = Benefit.create
    assert_not benefit.valid?, "Benefit without a tier name or required points is not valid"
  end

  # Created 11/27/2022 by Samuel Dominguez
  test "no tier name" do
    benefit = Benefit.create required_points: 250
    assert_not benefit.valid?, "Benefit without a tier name is not valid"
  end

  # Created 11/27/2022 by Samuel Dominguez
  test "no required points" do
    benefit = Benefit.create tier_name: "Silver"
    assert_not benefit.valid?, "Benefit without required points is not valid"
  end

  # Created 11/27/2022 by Samuel Dominguez
  test "no reward" do
    benefit = Benefit.create tier_name: "Silver", required_points: 250
    assert benefit.valid?, "Benefit without reward is still valid"
  end

  # Created 11/27/2022 by Samuel Dominguez
  test "all params" do
    benefit = Benefit.create tier_name: "Silver", required_points: 250, reward: "$5 Visa Gift Card"
    assert benefit.valid?, "Benefit with all params filled is valid"
  end
end
