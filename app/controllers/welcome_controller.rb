# Created 11/24/2022 by Ankit Patel
# File edited 12/03/2022 by Ankit Patel: Utilized more of the database to improve homepage
# File edited 12/04/2022 by Ankit Patel: Changed implementation to obtain users based on top ratings
# File edited 12/05/2022 by Ankit Patel: Added code for benefits to show appropriate information on homepage
# File edited 12/06/2022 by Ankit Patel: Changed code to now show approprate icon for reviewer and utilized helper functions

class WelcomeController < ApplicationController
  
  # Created 11/24/2022 by Ankit Patel
  # Edited 12/03/2022 by Ankit Patel: Utilized database tables
  # Edited 12/04/2022 by Ankit Patel: Get users based on top ratings
  # Edited 12/05/2022 by Ankit Patel: Added code for benefits to show appropraite info on homepage
  # Edited 12/06/2022 by Ankit Patel: Restructured code to show icons for reviewers and utilized helper functions
  # Edited 12/07/2022 by Ankit Patel: Refactored code for readability
  def homepage
    @query = Location.ransack(params[:q])

    @users = User.all
    @top_review_users = []
    @reviews = Review.order('reviews.rating DESC').all

    @reviews.each do |review| 
      @top_review_users.push WelcomeHelper.reviewer_icons(review.user.points)
    end

    @locations = Location.order('locations.rating DESC').all

    if user_signed_in?
      @user = current_user
      @first_name = @user.first_name
      @last_name = @user.last_name
      @phone = @user.phone
      @email = @user.email
      @username = @user.username
      @points = @user.points

      @benefits = Benefit.all
      @next_benefit = nil;
      @current_benefit = nil;

      @benefits.each do |benefit|
        if @points < benefit.required_points && @next_benefit == nil
          @next_benefit = benefit
        end
      end

      @benefits.each do |benefit|
        if @points >= benefit.required_points
          @current_benefit = benefit
        end
      end

      if @points < 5000
        @points_needed = @next_benefit.required_points - @points
      end
    end

    @member_icon = nil
    @tier_font_style = nil
    @icon_and_style = []

    @icon_and_style = WelcomeHelper.user_image_and_styling(@points)

    @member_icon = @icon_and_style[0]
    @tier_font_style = @icon_and_style[1]
    
  end
end

