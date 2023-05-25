# File created 11/23/2022 by Brendan Gass
# File edited 11/29/2022 by Ankit Patel: Added geocoder to location
# File edited 11/30/2022 by Samuel Dominguez: added has_many for WaitTime and Review tables
# File edited 12/01/2022 by Samuel Dominguez: remove reference to WaitTime table
class Location < ApplicationRecord
    geocoded_by :address
    after_validation :geocode, :if => :address_changed?

    has_many :reviews
end
