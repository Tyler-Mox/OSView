# File created 11/15/2022 by Samuel Dominguez: generated using `rails new` command
# File edited 11/27/2022 by Samuel Dominguez: added code to create benefits, added .destroy_all code to each table so each time this file is run it removes the old data first
# File edited 12/01/2022 by Samuel Dominguez: generate sample users and reviews 
# File edited 12/03/2022 by Ankit Patel: Adjusted ratings with review comments and fixed syntax error
# File edited 12/04/2022 by Samuel Dominguez: uncommented code that Ankit wrote that gives an appropriate comment based on the score
# File edited 12/06/2022 by Samuel Dominguez: added sample locations, wrote code to compute location rating and busy value, increased number of reviews
# File edited 12/06/2022 by Ankit Patel: Changed maximum points in random point generator
# File edited 12/07/2022 by Samuel Dominguez: updated logic in code that computes location average rating, added comments to destroy_all statements
# File edited 12/06/2022 by Ankit Patel: Added average comments for 3 star ratings so it wouldn't be associated with positive comments
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Created 12/01/2022 by Samuel Dominguez
# Remove reviews to avoid any foreign key issues when deleting all locations
Review.destroy_all

# Created 12/07/2022 by Samuel Dominguez
# Remove all old users in the database so we can repopulate the database with new/fresh users down below
User.destroy_all

# Created 12/01/2022 by Samuel Dominguez
# Edited 12/03/2022 by Ankit Patel: Empty user was being generated due to syntax error
# Edited 12/06/2022 by Samuel Dominguez: increase range of points in random point assignment
# Sample data (names, email, and phone numbers) generated from https://generatedata.com/generator
# Passwords are random 8 letter words generated from https://randomwordgenerator.com/
User.create([
    {
        email: "quisque@icloud.com",
        password: "greetings",
        password_confirmation: "greetings",
        first_name: "Kane",
        last_name: "Jefferson",
        phone: "(187) 815-3948",
        username: "KaneJeff187",
        points: rand(5200)
    },
    {
        email: "dolor.sit@google.com",
        password: "prisoner",
        password_confirmation: "prisoner",
        first_name: "Drake",
        last_name: "Jones",
        phone: "(154) 800-6233",
        username: "DraJon154",
        points: rand(5200)
    },
    {
        email: "eros.non@hotmail.com",
        password: "tolerant",
        password_confirmation: "tolerant",
        first_name: "Ella",
        last_name: "Callahan",
        phone: "(693) 859-5397",
        username: "EllCall693",
        points: rand(5200)
    },
    {
        email: "mollis.dui@outlook.com",
        password: "dressing",
        password_confirmation: "dressing",
        first_name: "Victoria",
        last_name: "Mathews",
        phone: "(740) 658-1680",
        username: "VicMat740",
        points: rand(5200)
    },
    {
        email: "nisl@yahoo.com",
        password: "unlawful",
        password_confirmation: "unlawful",
        first_name: "Conan",
        last_name: "Buck",
        phone: "(247) 242-2903",
        username: "ConBuc247",
        points: rand(5200)
    },
    {
        email: "feugiat@icloud.com",
        password: "judicial",
        password_confirmation: "judicial",
        first_name: "Raven",
        last_name: "Conley",
        phone: "(961) 542-2544",
        username: "RavCon961",
        points: rand(5200)
    },
    {
        email: "augue@outlook.com",
        password: "aviation",
        password_confirmation: "aviation",
        first_name: "Elton",
        last_name: "Summers",
        phone: "(724) 519-6111",
        username: "EltSum724",
        points: rand(5200)
    },
    {
        email: "integer.in@protonmail.com",
        password: "building",
        password_confirmation: "building",
        first_name: "May",
        last_name: "Weaver",
        phone: "(981) 667-7446",
        username: "MayWea981",
        points: rand(5200)
    },
    {
        email: "magna.et.ipsum@icloud.com",
        password: "negative",
        password_confirmation: "negative",
        first_name: "Hashim",
        last_name: "Leonard",
        phone: "(884) 811-6546",
        username: "HasLeo884",
        points: rand(5200)
    },
    {
        email: "ornare@hotmail.com",
        password: "skeleton",
        password_confirmation: "skeleton",
        first_name: "Tate",
        last_name: "Tyson",
        phone: "(476) 234-7277",
        username: "TatTys476",
        points: rand(5200)
    }
])

# Created 11/27/2022 by Samuel Dominguez
# Edited 12/07/2022 by Samuel Dominguez: added comment
# Remove all locations that may currently be in the database so fresh ones can be created below
Location.destroy_all

# Created 12/06/2022 by Samuel Dominguez
# On-Campus Locations
# Data gathered from Ohio State University Dining Website: https://dining.osu.edu/dininglocations/
Location.create([
    {
        name: "Union Market",
        address: "1739 North High Street, Columbus, OH 43210",
        type_of: "Fast food",
        on_campus: true,
        img_src: "https://dining.osu.edu/posts/images/sp20-dining-location-logos-23-big.jpg"
    },
    {
        name: "12th Ave Bread Company",
        address: "251 W. 12th Avenue, Columbus, OH 43210",
        type_of: "Coffee",
        on_campus: true,
        img_src: "https://dining.osu.edu/posts/images/sp20-dining-location-logos-14-big.jpg"
    },
    {
        name: "Berry Cafe",
        address: "1858 Neil Ave Mall, Columbus, OH 43210",
        type_of: "Coffee",
        on_campus: true,
        img_src: "https://dining.osu.edu/posts/images/sp20-dining-location-logos-21-big.jpg"
    },
    {
        name: "Connecting Grounds",
        address: "160 West Woodruff Avenue, Columbus, OH 43210",
        type_of: "Coffee",
        on_campus: true,
        img_src: "https://dining.osu.edu/posts/images/sp20-dining-location-logos-01-big.jpg"
    },
    {
        name: "Courtside Cafe",
        address: "337 Annie and John Glenn Ave,Columbus, OH 43210",
        type_of: "Fast food",
        on_campus: true,
        img_src: "https://dining.osu.edu/posts/images/sp20-dining-location-logos-16-big.jpg"
    },
    {
        name: "Curl Market",
        address: "80 W. Woodruff Ave., Columbus, OH 43210",
        type_of: "Fast food",
        on_campus: true,
        img_src: "https://dining.osu.edu/posts/images/sp20-dining-location-logos-02-big.jpg"
    },
    {
        name: "Espress-OH",
        address: "	1739 North High Street, Columbus, OH 43210",
        type_of: "Coffee",
        on_campus: true,
        img_src: "https://dining.osu.edu/posts/images/sp20-dining-location-logos-15-big.jpg"
    },
    {
        name: "Juice 2",
        address: "337 Annie and John Glenn Ave, Columbus, OH 43210",
        type_of: "Coffee",
        on_campus: true,
        img_src: "https://dining.osu.edu/posts/images/sp20-dining-location-logos-16-big.jpg"
    },
    {
        name: "Marketplace",
        address: "1578 Neil Avenue, Columbus, OH 43210",
        type_of: "Fast food",
        on_campus: true,
        img_src: "https://dining.osu.edu/posts/images/sp20-dining-location-logos-24-big.jpg"
    },
    {
        name: "Mirror Lake Eatery",
        address: "1760 Neil Avenue, Columbus, OH 43210",
        type_of: "Fast food",
        on_campus: true,
        img_src: "https://dining.osu.edu/posts/images/sp20-dining-location-logos-12-big.jpg"
    },
    {
        name: "Oxley's by the Numbers",
        address: "2050 Tuttle Park Place, Columbus, OH 43210",
        type_of: "Fast food",
        on_campus: true,
        img_src: "https://dining.osu.edu/posts/images/sp20-dining-location-logos-10-big.jpg"
    },
    {
        name: "Sloopy's Diner",
        address: "1739 North High Street, Columbus, OH 43210",
        type_of: "Restaurants",
        on_campus: true,
        img_src: "https://dining.osu.edu/posts/images/sp20-dining-location-logos-08-big.jpg"
    },
    {
        name: "Terra Byte Cafe",
        address: "175 W. 18th Avenue, Columbus, OH 43210",
        type_of: "Coffee",
        on_campus: true,
        img_src: "https://dining.osu.edu/posts/images/sp20-dining-location-logos-22-big.jpg"
    },
    {
        name: "Traditions at Kennedy",
        address: "251 W. 12th Avenue, Columbus, OH 43210",
        type_of: "Restaurants",
        on_campus: true,
        img_src: "https://dining.osu.edu/posts/images/sp20-dining-location-logos-04-big.jpg"
    },
    {
        name: "Traditions at Morrill",
        address: "1900 Cannon Drive, Columbus, OH 43210",
        type_of: "Restaurants",
        on_campus: true,
        img_src: "https://dining.osu.edu/posts/images/sp20-dining-location-logos-05-big.jpg"
    },
    {
        name: "Traditions at Scott",
        address: "160 W. Woodruff Avenue, Columbus, OH 43210",
        type_of: "Restaurants",
        on_campus: true,
        img_src: "https://dining.osu.edu/posts/images/sp20-dining-location-logos-03-big.jpg"
    },
    {
        name: "Woody's Tavern",
        address: "1739 North High Street, Columbus, OH 43210",
        type_of: "Fast food",
        on_campus: true,
        img_src: "https://dining.osu.edu/posts/images/sp20-dining-location-logos-09-big.jpg"
    }
])

# Created 12/06/2022 by Samuel Dominguez
# Off-Campus Locations
# Data gathered from Google
Location.create([
    {
        name: "Noodles and Company",
        address: "2124 N High St, Columbus, OH 43201",
        type_of: "Fast food",
        on_campus: false,
        img_src: "https://lh3.googleusercontent.com/p/AF1QipNnI4lvJa1MlcSzFeYPjW-c93kceJwZA64YvogL=s680-w680-h510"
    },
    {
        name: "Panda Express",
        address: "2044 N High St, Columbus, OH 43201",
        type_of: "Fast food",
        on_campus: false,
        img_src: "https://images.sirved.com/ChIJEyCa80HPD4gRmTjVQYdC4hw/qHjYOqUxtJ.png"
    },
    {
        name: "Poke Bros.",
        address: "2036 N High St, Columbus, OH 43201",
        type_of: "Fast food",
        on_campus: false,
        img_src: "https://media-cdn.grubhub.com/image/upload/d_search:browse-images:default.jpg/w_300,q_100,fl_lossy,dpr_2.0,c_fit,f_auto,h_300/gnwt1nvwoxrabgfiayqf"
    },
    {
        name: "Chipotle",
        address: "2130 N High St, Columbus, OH 43201",
        type_of: "Fast food",
        on_campus: false,
        img_src: "https://www.nrn.com/sites/nrn.com/files/styles/article_featured_retina/public/uploads/2016/10/chipotle-logo-promo.gif?itok=_9GHdEIP"
    },
    {
        name: "Wendy's",
        address: "2004 N High St, Columbus, OH 43201",
        type_of: "Fast food",
        on_campus: false,
        img_src: "https://images.saymedia-content.com/.image/t_share/MTc0MjMxNzkwNTQ1MTUxNDg0/wendys-restaurant-poutine-review.jpg"
    },
    {
        name: "Chick-fil-A",
        address: "1924 N High St, Columbus, OH 43201",
        type_of: "Fast food",
        on_campus: false,
        img_src: "https://pbs.twimg.com/profile_images/1148729107406041088/emlH0Rv4_400x400.png"
    },
    {
        name: "QDOBA Mexican Eats",
        address: "1956 N High St, Columbus, OH 43201",
        type_of: "Fast food",
        on_campus: false,
        img_src: "https://www.tampaairport.com/sites/default/master/files/landing-pages/images/detail-Qdoba1.jpg"
    },
    {
        name: "Charleys Philly Steaks",
        address: "1980 N High St STE B, Columbus, OH 43201",
        type_of: "Fast food",
        on_campus: false,
        img_src: "https://images.squarespace-cdn.com/content/v1/5b43b6890dbda3509e452e29/1534882999360-S0Q97URQ0AK2WH8JHA32/charleys-philly-steaks-400px.jpg"
    },
    {
        name: "Buffalo Wild Wings",
        address: "2151 N High St, Columbus, OH 43201",
        type_of: "Restaurants",
        on_campus: false,
        img_src: "https://productimages.nimbledeals.com/gift_card_skin/20e987ede965e0b3f34ce424ead355_1645575984421"
    },
    {
        name: "McDonald's",
        address: "1972 N High St, Columbus, OH 43201",
        type_of: "Fast food",
        on_campus: false,
        img_src: "https://1000logos.net/wp-content/uploads/2017/03/symbol-McDonalds.jpg"
    },
    {
        name: "Midway",
        address: "1728 N High St, Columbus, OH 43201",
        type_of: "Bars",
        on_campus: false,
        img_src: "https://cdn.columbusunderground.com/wp-content/uploads/2012/01/midway-logo-2.jpg"
    },
    {
        name: "Threes Above High",
        address: "2203 N High St, Columbus, OH 43201",
        type_of: "Bars",
        on_campus: false,
        img_src: "https://img1.wsimg.com/isteam/ip/ba732905-0c22-47b6-9b88-a58ded399061/logo/e0f9eef5-737b-4a48-b2b9-6cdbf9df878e.png/:/rs=w:365,h:365,cg:true,m/cr=w:365,h:365"
    },
    {
        name: "Ethyl & Tank",
        address: "19 E 13th Ave, Columbus, OH 43201",
        type_of: "Bars",
        on_campus: false,
        img_src: "https://ih1.redbubble.net/image.1099292309.6901/flat,750x,075,f-pad,750x1000,f8f8f8.jpg"
    }
])

# Created 12/01/2022 by Samuel Dominguez
# Create 3 types of reviews 1) rating without wait time, 2) rating with only wait time, 3) rating with rating, comment, and wait time
# Edited 12/03/22 by Ankit Patel: Eddited comments so rating provided aligns with positive or negative comment
# Edited 12/04/2022 by Samuel Dominguez: uncommented lines Ankit wrote to include an appropriate comment to a good or bad rating
# Edited 12/06/2022 by Samuel Dominguez: added more negative comments and increased number of loops
# Edited 12/06/2022 by Ankit Patel: Added average comments as seperate from positive/negative specifically for 3 star reviews
positive_comments = ["Great food", "Great service", "It's pretty good", "Would come back", "Fast service", "Great prices", "Me and my friends love this place", "I would come back", "I like it alot"];
average_comments = ["Average Service", "You're getting what you pay for", "Not the best... but not the worst", "Might be better to try somewhere else idk", "Decent, not much to complain"]
negative_comments = ["I would not recommend it", "Its horrible", "It's too expensive", "Won't be coming back", "Terrible service", "The worst!", "I had to send my food back", "Unpleasant to say the least"]
# Reviews with no wait times, just rating and comment
20.times do |i|
    random_user_id = rand(User.first.id..User.last.id)
    random_location_id = rand(Location.first.id..Location.last.id)
    random_rating = rand(1..5)
    if random_rating > 3
        random_comment = positive_comments[rand(positive_comments.length - 1)]
    elsif random_rating == 3
        random_comment = positive_comments[rand(average_comments.length - 1)]
    else
        random_comment = negative_comments[rand(negative_comments.length - 1)]
    end

    Review.create({
        user_id: random_user_id,
        location_id: random_location_id,
        rating: random_rating,
        comment: random_comment
    })
end

# Reviews with only wait times
# Created 12/01/2022 by Samuel Dominguez
# Edited 12/03/22 by Ankit Patel: Eddited comments so rating provided aligns with positive or negative comment
# Edited 12/06/2022 by Samuel Dominguez: increased number of loops
50.times do |i|
    random_user_id = rand(User.first.id..User.last.id)
    random_location_id = rand(Location.first.id..Location.last.id)
    random_busy_value = rand(1..5)

    Review.create({
        user_id: random_user_id,
        location_id: random_location_id,
        busy_value: random_busy_value
    })
end

# Reviews with ratings, comments, and wait times
# Created 12/01/2022 by Samuel Dominguez
# Edited 12/04/2022 by Samuel Dominguez: uncommented lines Ankit wrote to include an appropriate comment to a good or bad rating
# Edited 12/06/2022 by Samuel Dominguez: increased number of loops
# Edited 12/06/2022 by Ankit Patel: Added an average comment section for 3 star reviews
20.times do |i|
    random_user_id = rand(User.first.id..User.last.id)
    random_location_id = rand(Location.first.id..Location.last.id)
    random_rating = rand(1..5)
    if random_rating > 3
        random_comment = positive_comments[rand(positive_comments.length - 1)]
    elsif random_rating == 3
        random_comment = positive_comments[rand(average_comments.length - 1)]
    else
        random_comment = negative_comments[rand(negative_comments.length - 1)]
    end
    random_busy_value = rand(1..5)
    

    Review.create({
        user_id: random_user_id,
        location_id: random_location_id,
        comment: random_comment,
        rating: random_rating,
        busy_value: random_busy_value
    })
end

# Created 12/06/2022 by Samuel Dominguez
# Edited 12/07/2022 by Samuel Dominguez: change denominator of average rating to only count the number of reviews with ratings, not all reviews
# This code sets the busy value and rating for each location.
# Rating is based on the average rating value of reviews that have been left for that location
Location.all.each do |location|
    reviews = location.reviews

    # numerator and denominator to calculate average rating (avg_rating = total_rating_sum / num_of_reviews_with_rating)
    total_rating_sum = 0 
    num_of_reviews_with_rating = 0;

    # sum all of the rating values for reviews of a location and set the busy value for a location each time there is a review with a busy value
    reviews.each do |review|
        if review.rating != nil
            total_rating_sum += review.rating
            num_of_reviews_with_rating += 1
        end

        if review.busy_value != nil
            location.busy_value = review.busy_value
        end
    end

    avg_rating = 0
    # With the total_rating_sum calculated above, take the average rating
    if num_of_reviews_with_rating != 0
        avg_rating = total_rating_sum / num_of_reviews_with_rating
    end

    # Finally store that average rating as the location's rating
    location.rating = avg_rating
    location.save
end

# Created 11/27/2022 by Samuel Dominguez
# Edited 12/07/2022 by Samuel Dominguez: added comment
# Remove all benefits currently in the database so fresh ones can be created below
Benefit.destroy_all

# Created 11/27/2022 by Samuel Dominguez
# Edited 12/06/2022 by Samuel Dominguez: updated rewards
Benefit.create([
    {
        tier_name: "Member",
        required_points: 0,
        reward: "None"
    },
    {
        tier_name: "Bronze",
        required_points: 150,
        reward: "Coming Soon!"
    },
    {
        tier_name: "Silver",
        required_points: 500,
        reward: "Coming Soon!"
    },
    {
        tier_name: "Gold",
        required_points: 1000,
        reward: "Coming Soon!"
    },
    {
        tier_name: "Platinum",
        required_points: 2000,
        reward: "Coming Soon!"
    },
    {
        tier_name: "Diamond",
        required_points: 5000,
        reward: "Coming Soon!"
    }]
)