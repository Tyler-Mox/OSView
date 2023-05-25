# File Created 12/1/2022 by Tyler Mox
# File edited 12/06/2022 by Samuel Dominguez: update points gained by submitting review to 100 points and recalculate location busy value and rating after a new review is posted
# File edited 12/06/2022 by Tyler Mox: converted wait time user input to database values
# File edited 12/07/2022 by Samuel Dominguez: fixed bug and bad logic in calculation and assignment of location rating and busy value when taking new review into consideration
class ReviewsController < ApplicationController
    Review_Point_Value = 100
    before_action :find_location

    def new
        @review = Review.new
    end

    def create
        @review = Review.new(checkin_params)
        @review.user_id = current_user.id
        @review.location_id = @location.id
        wait_time = @review.busy_value

        # Check what user enters and convert to 1-5, if no wait time given, assign to nil
        case wait_time
        when 0
            result = 1
        when 5
            result = 2
        when 15
            result = 3
        when 30
            result = 4
        when 60
            result = 5
        else
            result = nil
        end

        @review.busy_value = result

        if @review.save
            current_user.points += Review_Point_Value
            current_user.save
            location = Location.find @location.id

            # Update the location busy value with the new review busy value, if given
            if @review.busy_value != nil
                location.busy_value = @review.busy_value
                location.save
            end

            # Update the location rating with average rating taking into account the new review, if given
            if @review.rating != nil
                total_rating_sum = 0
                num_of_reviews_with_rating = 0;

                # calculate the numerator and denominator to calulate the average rating in all of the reviews for the location that the new review belongs to
                location.reviews.each do |review|
                    if review.rating != nil
                        total_rating_sum += review.rating
                        num_of_reviews_with_rating += 1
                    end
                end

                # Compute average rating
                if num_of_reviews_with_rating != 0
                    avg_rating = total_rating_sum / num_of_reviews_with_rating

                    # Store in database
                    location.rating = avg_rating
                    location.save
                end
            end

            redirect_to location_path(@location)
        else
            render 'new'
        end
    end

    private 

    def find_location
        @location = Location.find(params[:location_id])
    end

    def checkin_params
        params.require(:review).permit(:rating, :comment, :busy_value)
    end
end



