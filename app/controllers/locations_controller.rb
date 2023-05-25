# File created 11/23/2022 by Brendan Gass
# File edited 11/28/2022 by Brendan Gass: Added filters route
# File edited 12/02/2022 by Brendan Gass: Added filtering logic
# File edited 12/03/2022 by Ankit Patel: Added ransack location for search bar
# File edited 12/04/2022 by Samuel Dominguez: added logic to show method to process reviews
# File edited 12/05/2022 by Samuel Dominguez: fixed bug in getting total rating sum

class LocationsController < ApplicationController
  @@zone = nil
  @@types = []
  @@sort_type = 'Rating'
  @@query = nil

  # Created 11/23/2022 by Brendan Gass
  # Edited 11/29/2022 by Brendan Gass: Modified logic
  # Edited 12/02/2022 by Brendan Gass: Added filtering logic
  # Edited 12/03/2022 by Ankit Patel: Added search bar logic
  def index
    @zone = @@zone
    @types = @@types
    @sort_type = @@sort_type
    filter_hash = {}

    if params[:q]
      params[:q] == '' ? @@query = nil : @@query = params[:q]
    end

    @query = Location.ransack(@@query)
    @locations = @query.result(distinct: true)

    if !@zone.nil? || @types.length > 0
      if @zone == 'On campus'
        filter_hash[:on_campus] = true
      elsif @zone == 'Off campus'
        filter_hash[:on_campus] = false
      end
      filter_hash[:type_of] = @types if @types.length > 0
      @locations = @locations.where(filter_hash)
    end

    @sort_type = @@sort_type = params[:order] if params[:order] 
    @sort_type == 'Rating' ? @locations = @locations.order(rating: :desc) : @locations = @locations.order(:busy_value)
    session[:original_referrer] = request.original_url
  end

  # Created 11/27/2022 by Brendan Gass
  # Edited 11/29/2022 by Brendan Gass: Modified logic
  # Edited 12/04/2022 by Samuel Dominguez: added logic to get reviews and calculate average rating
  # Edited 12/05/2022 by Samuel Dominguez: fixed bug in the case where a review does not have a rating when calculating total rating total 
  # Edited 12/06/2022 by Brendan Gass: removed redundant code for calculating avg_rating and wait time
  def show
    @location = Location.find(params[:id])
  end

  # Created 11/28/2022 by Brendan Gass
  # Edited 11/29/2022 by Brendan Gass: Modified logic
  # Edited 11/30/2022 by Brendan Gass: Redirect to index after submit
  def filters
    @back_url = session[:original_referrer]

    if params[:zone]
      @@zone = params[:zone]
    elsif params[:commit]
      @@zone = nil
    end

    if params[:types]
      @@types = params[:types]
    elsif params[:commit]
      @@types = []
    end

    if params[:commit] && params[:commit] == 'Clear all'
      @@zone, @@types = nil, []
    end

    @zone, @types = @@zone, @@types
    redirect_to action: 'index' if params[:commit] && params[:commit] == 'Save filters'
  end

end
