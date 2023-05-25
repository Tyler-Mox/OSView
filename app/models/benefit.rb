# File created 11/27/2022 by Samuel Dominguez
class Benefit < ApplicationRecord
    validates :tier_name, presence: true
    validates :required_points, presence: true
end
