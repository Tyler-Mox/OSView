# File created 11/27/2022 by Samuel Dominguez
# File edited 11/28/2022 by Samuel Dominguez: integrated with devise and grab signed in user's data
# File edited 12/04/2022 by Samuel Dominguez: added line to get reviews created by the signed in user
# File edited 12/06/2022 by Samuel Dominguez: add check to see if user has achieved max benefit when getting next benefit
# File edited 12/07/2022 by Samuel Dominguez: removed points conditional since points are now defaulted to 0
class ProfileController < ApplicationController
  
  # Created 11/27/2022 by Samuel Dominguez
  # Edited 11/28/2022 by Samuel Dominguez: added check if signed in, set user as current user from devise gem
  # Edited 12/04/2022 by Samuel Dominguez: store user's reviews in @reviews variable
  # Edited 12/06/2022 by Samuel Dominguez: before finding next benefit, check if point value of highest benefit has been reached
  # Edited 12/07/2022 by Samuel Dominguez: remove conditional that checks if points is nil since points is now defaulted to 0 instead nil
  def view_profile

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

      # Get the next benefit that the user has not unlocked yet if not at max level
      if @points < 5000
        @benefits.each do |benefit|
          if @points < benefit.required_points && @next_benefit == nil
            @next_benefit = benefit
          end
        end
      end

      @reviews = @user.reviews
    end
  end
end
