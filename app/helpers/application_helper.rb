# File created 11/15/2022 by Samuel Dominguez: generated using `rails new` command

# Created 12/01/2022 by Brendan Gass
module ApplicationHelper
    def show_svg(path)
        File.open("app/assets/images/#{path}", "rb") do |file|
            raw file.read
        end
    end
end
