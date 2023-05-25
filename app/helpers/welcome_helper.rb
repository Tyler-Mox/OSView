# Created 11/24/2022 by Ankit Patel
# File edited 12/06/2022 by Ankit Patel: Added two functions containing switch cases for user icon and styling and reviewers icon

module WelcomeHelper

    # Created 12/06/2022 by Ankit Patel
    def self.user_image_and_styling(points)

        icon_style = [];

        case points
        when 0...150
            icon_style[0] = "osview_logo.png"
            icon_style[1] = "tier-name-font-purple"
        when 150...500
            icon_style[0] = "bronze_member.png"
            icon_style[1] = "tier-name-font-bronze"
        when 500...1000
            icon_style[0] = "silver_member.png"
            icon_style[1] = "tier-name-font-silver"
        when 1000...2000
            icon_style[0] = "gold_member.png"
            icon_style[1] = "tier-name-font-gold"
        when 2000...5000
            icon_style[0] = "platinum_member.png"
            icon_style[1] = "tier-name-font-platinum"
        else
            icon_style[0] = "diamond_member.png"
            icon_style[1] = "tier-name-font-diamond"
        end

        return icon_style

    end

    # Created 12/06/2022 by Ankit Patel
    def self.reviewer_icons(points)

        case points
        when 0...150
            icon = "osview_logo.png"
        when 150...500
            icon = "bronze_member.png"
        when 500...1000
            icon = "silver_member.png"
        when 1000...2000
            icon = "gold_member.png"
        when 2000...5000
            icon = "platinum_member.png"
        else
            icon = "diamond_member.png"
        end

        return icon;
        
    end
end
