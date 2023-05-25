# File created 11/15/2022 by Samuel Dominguez: generated using `rails new` command
require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
end
