# File created 11/30/2022 by Samuel Dominguez
class Review < ApplicationRecord
    belongs_to :user
    belongs_to :location
end
