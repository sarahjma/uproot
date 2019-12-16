require 'open-uri'
require 'json'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  # enable_extension "plpgsql"

puts "cleaning database"
ChosenAnswer.destroy_all
Answer.destroy_all
Question.destroy_all
QuizResult.destroy_all

puts "creating QuizResult"

  r1 = QuizResult.create

puts "creating Questions 1"

  q1 = Question.create(
    category: "mobility",
    content: "How do you get to work?",
    display_type: "type-image"
  )


  a1 = Answer.create(
    question: q1,
    image: "https://images.unsplash.com/photo-1503376780353-7e6692767b70?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    score: "traffic"
  )

  a2 = Answer.create(
    question: q1,
    image: "https://images.unsplash.com/photo-1507035895480-2b3156c31fc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    score: "bike"
  )

  a3 = Answer.create(
    question: q1,
    image: "https://images.unsplash.com/photo-1517737812598-1a43d0ef2a60?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    score: "train"
  )

  a4 = Answer.create(
    question: q1,
    image: "https://images.unsplash.com/photo-1506751470038-e579eb91f580?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    score: "walking"
  )


puts "creating Questions 2"

  q2 = Question.create(
    category: "career",
    content: "What do you do for work?",
    display_type: "type-dropdown"
  )


  a1 = Answer.create(
    question: q2,
    text: "doctor",
    score: "doctor",
  )

  a2 = Answer.create(
    question: q2,
    text: "tech",
    score: "tech",
  )

  a3 = Answer.create(
    question: q2,
    text: "teacher",
    score: "teacher",
  )

  a4 = Answer.create(
    question: q2,
    text: "artist",
    score: "artist",
  )


puts "creating Questions 3"

  q3 = Question.create(
    category: "leisure",
    content: "What do you usually do in your free time?",
    display_type: "type-buttons"
  )


  a1 = Answer.create(
    question: q3,
    text: "gym",
    score: "gym",
  )

  a2 = Answer.create(
    question: q3,
    text: "museum",
    score: "museum",
  )

  a3 = Answer.create(
    question: q3,
    text: "cafe",
    score: "cafe",
  )

  a4 = Answer.create(
    question: q3,
    text: "concerts",
    score: "concerts",
  )

  a5 = Answer.create(
    question: q3,
    text: "pilates",
    score: "pilates",
  )

  a6 = Answer.create(
    question: q3,
    text: "climbing",
    score: "climbing",
  )

  a7 = Answer.create(
    question: q3,
    text: "basketball",
    score: "basketball",
  )

  a8 = Answer.create(
    question: q3,
    text: "soccer",
    score: "soccer",
  )

  a9 = Answer.create(
    question: q3,
    text: "swimming",
    score: "swimming",
  )

  a10 = Answer.create(
    question: q3,
    text: "study",
    score: "study",
  )

  a11 = Answer.create(
    question: q3,
    text: "code",
    score: "code",
  )

  a12 = Answer.create(
    question: q3,
    text: "wine tasting",
    score: "wine tasting",
  )

puts "creating Questions 4"

  q4 = Question.create(
    category: "housing",
    content: "Which looks most like home?",
    display_type: "type-image"
  )


  a1 = Answer.create(
    question: q4,
    image: "https://images.unsplash.com/photo-1560448075-cbc16bb4af8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
    score: "small apartment"
  )

  a2 = Answer.create(
    question: q4,
    image: "https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2173&q=80",
    score: "medium apartment"
  )

  a3 = Answer.create(
    question: q4,
    image: "https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
    score: "large apartment"
  )

  a4 = Answer.create(
    question: q4,
    image: "https://images.unsplash.com/photo-1548513830-5e684f0d4d82?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2989&q=80",
    score: "mobile-home"
  )
puts "creating Questions 5"

  q5 = Question.create(
    category: "leisure",
    content: "It's Friday! What does it look like?",
    display_type: "type-image"
  )


  a1 = Answer.create(
    question: q5,
    image: "https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3900&q=80",
    score: "homebody"
  )

  a2 = Answer.create(
    question: q5,
    image: "https://images.unsplash.com/photo-1524368535928-5b5e00ddc76b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3900&q=80",
    score: "outgoing"
  )

  a3 = Answer.create(
    question: q5,
    image: "https://images.unsplash.com/photo-1543007630-9710e4a00a20?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1275&q=80",
    score: "outgoing"
  )

  a4 = Answer.create(
    question: q5,
    image: "https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80",
    score: "chill"
  )

  a5 = Answer.create(
  question: q5,
  image: "https://images.unsplash.com/photo-1558086478-d632ccc5a833?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2546&q=80",
  score: "homebody"
  )

  a6 = Answer.create(
  question: q5,
  image: "https://images.unsplash.com/photo-1571942389762-b0502602ed4c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1700&q=80",
  score: "homebody"
  )

  a7 = Answer.create(
  question: q5,
  image: "https://images.unsplash.com/photo-1561587327-41f8d18f71df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
  score: "art-gallery"
  )

  a8 = Answer.create(
  question: q5,
  image: "https://shanghaicomedybunker.com/wp-content/uploads/2018/11/20299553.jpg",
  score: "comedy-club"
  )

  puts "creating Questions 6"

  q6 = Question.create(
    category: "nature",
    content: "It's Saturday. You finally have a free day. Where do you choose to spend it?",
    display_type: "type-image"
  )


  a1 = Answer.create(
    question: q6,
    image: "https://images.unsplash.com/photo-1523849161192-3a6e717932c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2237&q=80",
    score: "park"
  )

  a2 = Answer.create(
    question: q6,
    image: "https://images.unsplash.com/photo-1551632811-561732d1e306?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80",
    score: "hiking"
  )

  a3 = Answer.create(
    question: q6,
    image: "https://images.unsplash.com/photo-1480884296740-b04505e99dca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80",
    score: "beach"
  )

  a4 = Answer.create(
    question: q6,
    image: "https://images.unsplash.com/photo-1562754193-ba39a22c110b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2224&q=80",
    score: "museum"
  )

  a5 = Answer.create(
  question: q6,
  image: "https://images.unsplash.com/photo-1481437156560-3205f6a55735?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  score: "shopping"
  )

  a6 = Answer.create(
  question: q6,
  image: "https://images.unsplash.com/photo-1550763200-c150c99abfbe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80",
  score: "homebody"
  )

  a7 = Answer.create(
  question: q6,
  image: "https://images.unsplash.com/photo-1503919005314-30d93d07d823?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
  score: "zoo"
  )

  a8 = Answer.create(
  question: q6,
  image: "https://images.unsplash.com/photo-1498846323785-c40aafaaa4f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1258&q=80",
  score: "sports-game"
  )

  puts "creating Questions 7"

  q7 = Question.create(
    category: "housing",
    content: "Rent is due. How much do you pay?",
    display_type: "type-range"
  )


  a1 = Answer.create(
    question: q7,
    min: 0,
    max: 2000,
    score: "rent"
  )
  puts "creating Questions 6"

  q8 = Question.create(
    category: "sorting",
    content: "Drag in order what’s important to you?",
    display_type: "type-sortable"
  )


  a1 = Answer.create(
    question: q8,
    text: 'safety',
    score: 'safety'
  )

  a2 = Answer.create(
    question: q8,
    text: "education",
    score: "education"
  )

  a3 = Answer.create(
    question: q8,
    text: "housing",
    score: "housing"
  )

  a4 = Answer.create(
    question: q8,
    text: "career",
    score: "career"
  )

  a5 = Answer.create(
  question: q8,
  text: "mobility",
  score: "mobility"
  )

  a6 = Answer.create(
  question: q8,
  text: "leisure",
  score: "leisure"
  )

  a7 = Answer.create(
  question: q8,
  text: "health",
  score: "health"
  )

  ChosenAnswer.create(
    answer: a7,
    quiz_result: r1,
    )

  ChosenAnswer.create(
    answer: a6,
    quiz_result: r1,
    )

  puts "created #{Answer.count} Answers"
  puts "created #{QuizResult.count} QuizResults"
  puts "created #{Question.count} Questions"

#======================================================
# Veronica testing API (let's see how this goes)
# First let's get the cities:

def obtain_cities
  # We want it to return an array
  # for each city, a has of href and name
  uri = URI('https://api.teleport.org/api/urban_areas/')
  response = Net::HTTP.get(uri)
  data = JSON.parse(response)
  data['_links']['ua:item']
end

def obtain_healthcare(search_data)
  # Health from teleport
  health_data = search_data[7]['data'].select{|property| property["id"] == "HEALTHCARE-QUALITY-TELESCORE" }[0]
  if health_data.nil?
    return 0
  else
    return search_data[7]['data'].select{|property| property["id"] == "HEALTHCARE-QUALITY-TELESCORE" }[0]["float_value"]
  end
end

# Sarah for safety from teleport
def obtain_safety(search_data)
  safety_data = search_data.select{ |property| property["id"] == "SAFETY"}[0]['data'].select{|property| property["id"] == "CRIME-RATE-TELESCORE"}
  safety_data.nil? ? 0 : safety_data[0]['float_value']
end

# Sarah mobility car from teleport
def obtain_mobility(search_data)
  mobility_data = search_data.select{ |property| property["id"] == "TRAFFIC"}[0]
  if mobility_data.nil?
    return 0
  else
    if mobility_data['data'].select{|property| property["id"] == "TRAFFIC-INDEX-TELESCORE"}[0].nil?
    return 0
    else mobility_data['data'].select{|property| property["id"] == "TRAFFIC-INDEX-TELESCORE"}[0]['float_value']
    end
  end
end

# Train score from teleport
def obtain_train(search_data)
  train_data = search_data.select{ |property| property["id"] == "TRAVEL-CONNECTIVITY"}[0]
  if train_data.nil?
    return 0
  elsif train_data['data'].select{|property| property["id"] == "TRAIN-TRANSPORT-TELESCORE"}[0].nil?
    return 0
  else
    return train_data['data'].select{|property| property["id"] == "TRAIN-TRANSPORT-TELESCORE"}[0]["float_value"]
  end
end

# Education from teleport
def obtain_education(search_data)
  edu_data = search_data.select{ |property| property["id"] == "EDUCATION"}[0]
  if edu_data.nil?
    return 0
  elsif edu_data['data'].select{|property| property["id"] == "QUALITY-OF-UNIVERSITIES-TELESCORE"}[0].nil?
    return 0
  else
    return edu_data['data'].select{|property| property["id"] == "QUALITY-OF-UNIVERSITIES-TELESCORE"}[0]["float_value"]
  end
end

def obtain_weather(search_data)
  all_weather_array = []
  # Average weather high from teleport
  weather_data = search_data.select{ |property| property["id"] == "CLIMATE"}[0]
  if weather_data.nil?
    all_weather_array = [0,0,0,0]
  else
    if weather_data['data'].select{|property| property['id'] == "WEATHER-AVERAGE-HIGH"}[0].nil?
      all_weather_array << 0
    else
      all_weather_array << weather_data['data'].select{|property| property['id'] == "WEATHER-AVERAGE-HIGH"}[0]["string_value"]
    end
    # Average weather low from teleport
    if weather_data['data'].select{|property| property["id"] == "WEATHER-AVERAGE-LOW"}[0].nil?
      all_weather_array << 0
    else
      all_weather_array << weather_data['data'].select{|property| property["id"] == "WEATHER-AVERAGE-LOW"}[0]["string_value"]
    end
    # Weather by type from teleport
    if weather_data['data'].select{|property| property["id"] == "WEATHER-TYPE"}[0].nil?
      all_weather_array << 0
    else
      all_weather_array << weather_data['data'].select{|property| property["id"] == "WEATHER-TYPE"}[0]["string_value"]
    end
    if weather_data['data'].select{|property| property["id"] == "WEATHER-AV-POSSIBILITY-SUNSHINE"}[0].nil?
      all_weather_array << 0
    else
      all_weather_array << weather_data['data'].select{|property| property["id"] == "WEATHER-AV-POSSIBILITY-SUNSHINE"}[0]["percent_value"]
    end
  end
  return all_weather_array
end

def obtain_housing(search_data)
  all_housing_array = []
  # Housing- rent index score from teleport
  housing_data = search_data.select{ |property| property["id"] == "HOUSING"}[0]
  if housing_data.nil?
    puts "doesn't exist"
  else
    if housing_data['data'].select{|property| property["id"] == "RENT-INDEX-TELESCORE"}[0].nil?
      all_housing_array << 0
    else
      all_housing_array << housing_data['data'].select{|property| property["id"] == "RENT-INDEX-TELESCORE"}[0]["float_value"]
    end
    # Housing- small apartment avg rent
    if housing_data['data'].select{|property| property["id"] == "APARTMENT-RENT-SMALL"}[0].nil?
      all_housing_array << 0
    else
      all_housing_array << housing_data['data'].select{|property| property["id"] == "APARTMENT-RENT-SMALL"}[0]["currency_dollar_value"]
    end
    #Housing- medium apartment avg rent
    if housing_data['data'].select{|property| property["id"] == "APARTMENT-RENT-MEDIUM"}[0].nil?
      all_housing_array << 0
    else
      all_housing_array << housing_data['data'].select{|property| property["id"] == "APARTMENT-RENT-MEDIUM"}[0]["currency_dollar_value"]
    end
    if housing_data['data'].select{|property| property["id"] == "APARTMENT-RENT-LARGE"}[0].nil?
      all_housing_array << 0
    else
    #Housing- large apartment avg rent
      all_housing_array << housing_data['data'].select{|property| property["id"] == "APARTMENT-RENT-LARGE"}[0]["currency_dollar_value"]
    end
  end
  return all_housing_array
end

# Monthly avg fitness membership cost in dollar
def obtain_fitness_club(search_data)
  fitness_data = search_data.select{|property| property["id"] == "COST-OF-LIVING"}[0]
  if fitness_data.nil?
    return 0
  else
    if fitness_data['data'].select{|property| property["id"] == "COST-FITNESS-CLUB"}[0].nil?
      return 0
    else
      return fitness_data['data'].select{|property| property["id"] == "COST-FITNESS-CLUB"}[0]["currency_dollar_value"]
    end
  end
end

#Number of art galleries in city
def obtain_galleries_count(search_data)
  galleries_data = search_data.select{|property| property["id"] == "CULTURE"}[0]
  if galleries_data.nil?
    return 0
  else
    if galleries_data['data'].select{|property| property["id"] == "CULTURE-ART-GALLERIES-VENUE-COUNT"}[0].nil?
      return 0
    else
      return galleries_data['data'].select{|property| property["id"] == "CULTURE-ART-GALLERIES-VENUE-COUNT"}[0]["int_value"]
    end
  end
end

#Score of art galleries in city
def obtain_galleries_score(search_data)
  galleries_data = search_data.select{|property| property["id"] == "CULTURE"}[0]
  if galleries_data.nil?
    return 0
  else
    if galleries_data['data'].select{|property| property["id"] == "CULTURE-ART-GALLERIES-TELESCORE"}[0].nil?
      return 0
    else
      return galleries_data['data'].select{|property| property["id"] == "CULTURE-ART-GALLERIES-TELESCORE"}[0]["int_value"]
    end
  end
end

# Number of movie theaters in the city
def obtain_movie_venues_count(search_data)
  movies_data = search_data.select{|property| property["id"] == "CULTURE"}[0]
  if movies_data.nil?
    return 0
  else
    if movies_data['data'].select{|property| property["id"] == "CULTURE-CINEMAS-VENUE-COUNT"}[0].nil?
      return 0
    else
      return movies_data['data'].select{|property| property["id"] == "CULTURE-CINEMAS-VENUE-COUNT"}[0]["int_value"]
    end
  end
end

# Score of movie theaters in the city
def obtain_movie_venues_score(search_data)
  movies_data = search_data.select{|property| property["id"] == "CULTURE"}[0]
  if movies_data.nil?
    return 0
  else
    if movies_data['data'].select{|property| property["id"] == "CULTURE-CINEMA-TELESCORE"}[0].nil?
      return 0
    else
      return movies_data['data'].select{|property| property["id"] == "CULTURE-CINEMA-TELESCORE"}[0]["float_value"]
    end
  end
end

# Number of comedy clubs in the city
def obtain_comedy_clubs_count(search_data)
  comedy_data = search_data.select{|property| property["id"] == "CULTURE"}[0]
  if comedy_data.nil?
    return 0
  else
    if comedy_data['data'].select{|property| property["id"] == "CULTURE-COMEDY-CLUBS-VENUE-COUNT"}[0].nil?
      return 0
    else
      return comedy_data['data'].select{|property| property["id"] == "CULTURE-COMEDY-CLUBS-VENUE-COUNT"}[0]["int_value"]
    end
  end
end

# Score of comedy clubs in the city
def obtain_comedy_clubs_score(search_data)
  comedy_data = search_data.select{|property| property["id"] == "CULTURE"}[0]
  if comedy_data.nil?
    return 0
  else
    if comedy_data['data'].select{|property| property["id"] == "CULTURE-COMEDY-CLUBS-TELESCORE"}[0].nil?
      return 0
    else
      return comedy_data['data'].select{|property| property["id"] == "CULTURE-COMEDY-CLUBS-TELESCORE"}[0]["int_value"]
    end
  end
end

# Number of concert venues in the city
def obtain_concerts_count(search_data)
  concerts_data = search_data.select{|property| property["id"] == "CULTURE"}[0]
  if concerts_data.nil?
    return 0
  else
    if concerts_data['data'].select{|property| property["id"] == "CULTURE-CONCERTS-VENUE-COUNT"}[0].nil?
      return 0
    else
      return concerts_data['data'].select{|property| property["id"] == "CULTURE-CONCERTS-VENUE-COUNT"}[0]["int_value"]
    end
  end
end

# Number of concert venues in the city
def obtain_concerts_score(search_data)
  concerts_data = search_data.select{|property| property["id"] == "CULTURE"}[0]
  if concerts_data.nil?
    return 0
  else
    if concerts_data['data'].select{|property| property["id"] == "CULTURE-CONCERTS-TELESCORE"}[0].nil?
      return 0
    else
      return concerts_data['data'].select{|property| property["id"] == "CULTURE-CONCERTS-TELESCORE"}[0]["float_value"]
    end
  end
end

# Number of museums in the city
def obtain_museums_count(search_data)
  museum_data = search_data.select{|property| property["id"] == "CULTURE"}[0]
  if museum_data.nil?
    return 0
  else
    if museum_data['data'].select{|property| property["id"] == "CULTURE-MUSEUMS-VENUE-COUNT"}[0].nil?
      return 0
    else
      return museum_data['data'].select{|property| property["id"] == "CULTURE-MUSEUMS-VENUE-COUNT"}[0]["int_value"]
    end
  end
end

# Score of museums in the city
def obtain_museums_score(search_data)
  museum_data = search_data.select{|property| property["id"] == "CULTURE"}[0]
  if museum_data.nil?
    return 0
  else
    if museum_data['data'].select{|property| property["id"] == "CULTURE-MUSEUMS-TELESCORE"}[0].nil?
      return 0
    else
      return museum_data['data'].select{|property| property["id"] == "CULTURE-MUSEUMS-TELESCORE"}[0]["float_value"]
    end
  end
end

# Number of sports venue in the city
def obtain_sports_venues_count(search_data)
  sports_data = search_data.select{|property| property["id"] == "CULTURE"}[0]
  if sports_data.nil?
    return 0
  else
    if sports_data['data'].select{|property| property["id"] == "CULTURE-SPORTS-VENUE-COUNT"}[0].nil?
      return 0
    else
      sports_data['data'].select{|property| property["id"] == "CULTURE-SPORTS-VENUE-COUNT"}[0]["int_value"]
    end
  end
end

# Score of sports venue in the city
def obtain_sports_venues_score(search_data)
  sports_data = search_data.select{|property| property["id"] == "CULTURE"}[0]
  if sports_data.nil?
    return 0
  else
    if sports_data['data'].select{|property| property["id"] == "CULTURE-SPORTS-TELESCORE"}[0].nil?
      return 0
    else
      sports_data['data'].select{|property| property["id"] == "CULTURE-SPORTS-TELESCORE"}[0]["float_value"]
    end
  end
end

# Number of zoos in the city
def obtain_zoos_count(search_data)
  zoo_data = search_data.select{|property| property["id"] == "CULTURE"}[0]
  if zoo_data.nil?
    return 0
  else
    if zoo_data['data'].select{|property| property["id"] == "CULTURE-ZOOS-VENUE-COUNT"}[0].nil?
      return 0
    else
      return zoo_data['data'].select{|property| property["id"] == "CULTURE-ZOOS-VENUE-COUNT"}[0]["int_value"]
    end
  end
end

# Number of zoos in the city
def obtain_zoos_score(search_data)
  zoo_data = search_data.select{|property| property["id"] == "CULTURE"}[0]
  if zoo_data.nil?
    return 0
  else
    if zoo_data['data'].select{|property| property["id"] == "CULTURE-ZOOS-TELESCORE"}[0].nil?
      return 0
    else
      return zoo_data['data'].select{|property| property["id"] == "CULTURE-ZOOS-TELESCORE"}[0]["float_value"]
    end
  end
end

# Number of startup jobs available on avg
def obtain_employment(search_data)
  employment_data = search_data.select{|property| property["id"] == "JOB-MARKET"}[0]
  if employment_data.nil?
    return 0
  else
    if employment_data['data'].select{|property| property["id"] == "STARTUP-JOBS-AVAILABLE"}[0].nil?
      return 0
    else
      return employment_data['data'].select{|property| property["id"] == "STARTUP-JOBS-AVAILABLE"}[0]["int_value"]
    end
  end
end

# Unemployment rate in country. The number that is outputted, multiply by 10,000 to get the percent value. (0.00062 x 10,000 = 6.2%)
def obtain_unemployment(search_data)
  unemployment_data = search_data.select{|property| property["id"] == "INTERNAL"}[0]
  if unemployment_data.nil?
    return 0
  else
    if unemployment_data['data'].select{|property| property["id"] == "UNEMPLOYMENT-RATE"}[0].nil?
      return 0
    else
      return unemployment_data['data'].select{|property| property["id"] == "UNEMPLOYMENT-RATE"}[0]["percent_value"]
    end
  end
end

# LGBT rights
def obtain_LGBT(search_data)
  minority_data = search_data.select{|property| property["id"] == "MINORITIES"}[0]
  if minority_data.nil?
    return 0
  else
    if minority_data['data'].select{|property| property["id"] == "LGBT-DETAIL-MARRIAGE"}[0].nil?
      return 0
    else
      return minority_data['data'].select{|property| property["id"] == "LGBT-DETAIL-MARRIAGE"}[0]["string_value"]
    end
  end
end

# Air quality score. Full score is 1
def obtain_air_quality(search_data)
  air_data = search_data.select{|property| property["id"] == "POLLUTION"}[0]
  if air_data.nil?
    return 0
  else
    if air_data['data'].select{|property| property["id"] == "AIR-POLLUTION-TELESCORE"}[0].nil?
      return 0
    else
      return air_data['data'].select{|property| property["id"] == "AIR-POLLUTION-TELESCORE"}[0]["float_value"]
    end
  end
end

def obtain_greenery_score(search_data)
  greenery_data = search_data.select{|property| property["id"] == "POLLUTION"}[0]
  if greenery_data.nil?
    return 0
  else
    if greenery_data['data'].select{|property| property["id"] == "URBAN-GREENERY-TELESCORE"}[0].nil?
      return 0
    else
      return greenery_data['data'].select{|property| property["id"] == "URBAN-GREENERY-TELESCORE"}[0]["float_value"]
    end
  end
end

def obtain_pollution(search_data)
  pollution_data = search_data.select{|property| property["id"] == "POLLUTION"}[0]
  if pollution_data.nil?
    return 0
  else
    if pollution_data['data'].select{|property| property["id"] == "AIR-POLLUTION-TELESCORE"}[0].nil?
      return 0
    else
      return pollution_data['data'].select{|property| property["id"] == "AIR-POLLUTION-TELESCORE"}[0]["float_value"]
    end
  end
end

def obtain_beach_score(search_data)
  beach_data = search_data.select{|property| property["id"] == "OUTDOORS"}[0]
  if beach_data.nil?
    return 0
  else
    if beach_data['data'].select{|property| property["id"] == "SEASIDE-ACCESS-TELESCORE"}[0].nil?
      return 0
    else
      return beach_data['data'].select{|property| property["id"] == "SEASIDE-ACCESS-TELESCORE"}[0]["float_value"]
    end
  end
end

def obtain_airport_score(search_data)
  airport_data = search_data.select{|property| property["id"] == "TRAVEL-CONNECTIVITY"}[0]
  if airport_data.nil?
    return 0
  else
    if airport_data['data'].select{|property| property["id"] == "AIRPORT-HUB-TELESCORE"}[0].nil?
      return 0
    else
      return airport_data['data'].select{|property| property["id"] == "AIRPORT-HUB-TELESCORE"}[0]["float_value"]
    end
  end
end

def obtain_waterquality_score(search_data)
  water_data = search_data.select{|property| property["id"] == "POLLUTION"}[0]
  if water_data.nil?
    return 0
  else
    if water_data['data'].select{|property| property["id"] == "DRINKING-WATER-QUALITY-TELESCORE"}[0].nil?
      return 0
    else
      return water_data['data'].select{|property| property["id"] == "DRINKING-WATER-QUALITY-TELESCORE"}[0]["float_value"]
    end
  end
end

def obtain_death_age(search_data)
  death_age_data = search_data.select{|property| property["id"] == "HEALTHCARE"}[0]
  if death_age_data.nil?
    return 0
  else
    if death_age_data['data'].select{|property| property["id"] == "HEALTHCARE-LIFE-EXPECTANCY"}[0].nil?
      return 0
    else
      return death_age_data['data'].select{|property| property["id"] == "HEALTHCARE-LIFE-EXPECTANCY"}[0]["float_value"]
    end
  end
end

# Do loop for each of the cities:
def seed_scores
  # Get array of all cities
  all_cities = obtain_cities
  puts "Browsing #{all_cities.length} cities"
  all_cities.each do |city_url|
    uri = URI(city_url + "details/")
    puts uri
    response = Net::HTTP.get(uri)
    search_data = JSON.parse(response)
    # Assign each variable we got to an array
    #obtain_healthcare(search_data['categories'])
    #obtain_safety(search_data['categories'])
    #obtain_mobility(search_data['categories'])
    #obtain_education(search_data['categories'])
    #obtain_weather(search_data['categories'])
    #obtain_housing(search_data['categories'])
    #obtain_fitness_club(search_data['categories'])
    #obtain_galleries(search_data['categories'])
    #obtain_movies(search_data['categories'])
    #obtain_comedy_clubs(search_data['categories'])
    #obtain_concerts(search_data['categories'])
    #obtain_museums(search_data['categories'])
    #obtain_sports_venues(search_data['categories'])
    #obtain_zoos(search_data['categories'])
    #obtain_employment(search_data['categories'])
    #obtain_unemployment(search_data['categories'])
    #obtain_LGBT(search_data['categories'])
    #obtain_air_quality(search_data['categories'])
    #obtain_air_quality(search_data['categories'])
    #obtain_greenery(search_data['categories'])
  end
end

puts "Deleting any previous city data..."
City.destroy_all
#[0..4]
obtain_cities[0..4].each do |api_city|
  city = City.new(name: api_city['name'])

  uri = URI(api_city['href'] + "details/")
  puts uri
  response = Net::HTTP.get(uri)
  search_data = JSON.parse(response)

  city.healthcare_score = obtain_healthcare(search_data['categories'])
  city.safety_score = obtain_safety(search_data['categories'])
  city.traffic_score = obtain_mobility(search_data['categories'])
  city.education_score = obtain_education(search_data['categories'])
  city.rent_small_price = obtain_housing(search_data['categories'])[1]
  city.rent_medium_price = obtain_housing(search_data['categories'])[2]
  city.rent_large_price = obtain_housing(search_data['categories'])[3]
  city.temp_min = obtain_weather(search_data['categories'])[1]
  city.temp_max = obtain_weather(search_data['categories'])[0]
  city.sunny_score = obtain_weather(search_data['categories'])[3]
  city.weather_type = obtain_weather(search_data['categories'])[2]
  # To be added to MODEL:
  city.train_score = obtain_train(search_data['categories'])
  # Average of sunny days %, safety, and greenery
  city.walking_score = (obtain_weather(search_data['categories'])[3] + \
          obtain_safety(search_data['categories']) + \
          obtain_greenery_score(search_data['categories'])) / 3
  city.bike_score = ( (1 - obtain_pollution(search_data['categories'])) + \
            obtain_weather(search_data['categories'])[3]) / 2
  city.museum_count = obtain_museums_count(search_data['categories'])
  city.museum_score = obtain_museums_score(search_data['categories'])
  city.zoo_count = obtain_zoos_count(search_data['categories'])
  city.zoo_score = obtain_zoos_score(search_data['categories'])

  city.sport_venues_count = obtain_sports_venues_count(search_data['categories'])
  city.sports_venues_score = obtain_sports_venues_score(search_data['categories'])

  city.movie_venues_count = obtain_movie_venues_count(search_data['categories'])
  city.movie_venues_score = obtain_movie_venues_score(search_data['categories'])


  city.comedy_count = obtain_comedy_clubs_count(search_data['categories'])
  city.comedy_score = obtain_comedy_clubs_score(search_data['categories'])

  city.concerts_venues = obtain_concerts_count(search_data['categories'])
  city.concerts_score = obtain_concerts_score(search_data['categories'])


  city.galleries_count = obtain_galleries_count(search_data['categories'])
  city.galleries_score = obtain_galleries_score(search_data['categories'])

  city.lgbtq_status = obtain_LGBT(search_data['categories'])
  city.air_quality_score = obtain_air_quality(search_data['categories'])
  city.greenery_score = obtain_greenery_score(search_data['categories'])
  city.airport_score = obtain_airport_score(search_data['categories'])
  city.water_score = obtain_waterquality_score(search_data['categories'])
  city.life_expectancy = obtain_death_age(search_data['categories'])

  city.park_score = obtain_greenery_score(search_data['categories'])
  city.beach_score = (obtain_beach_score(search_data['categories']) + \
              obtain_weather(search_data['categories'])[3]) / 2
  city.hiking_score = obtain_greenery_score(search_data['categories'])

  # This is to obtain the image associated with each city. In different part or API
  uri = URI(api_city['href'] + 'images/')
  response = Net::HTTP.get(uri)
  search_data = JSON.parse(response)

  city.image = search_data['photos'][0]['image']['mobile']

  city.save!

  puts "#{city.name} was created."
  puts "with healthcare_score #{city.healthcare_score}"
  puts "with safety score of #{city.safety_score}"
  puts "with and traffic score of #{city.traffic_score}"
  puts "with an education score of #{city.education_score}"
  puts "with small rent of #{city.rent_small_price} dollars, medium rent of #{city.rent_medium_price}, large rent of #{city.rent_large_price} dollars."
  puts "with weather min of #{city.temp_min} and max of #{city.temp_max}"
  puts "with train score of #{city.train_score}"
  puts "with bike score of #{city.bike_score}"
  puts "with a museum count of #{city.museum_count}"
  puts "with a museum score of #{city.museum_score}"
  puts "with a zoo count of #{city.zoo_count}"
  puts "with a zoo score of #{city.zoo_score}"
  puts "with a sports venue count of #{city.sport_venues_count}"
  puts "with a sports venue count of #{city.sports_venues_score}"
  puts "with a comedy club count of #{city.comedy_count}"
  puts "with a comedy club score of #{city.comedy_score}"
  puts "with a galleries count of #{city.galleries_count}"
  puts "with a galleries score of #{city.galleries_score}"
  puts "with a movie theatre count of #{city.movie_venues_count}"
  puts "with a movie theatre score of #{city.movie_venues_score}"
  puts "with a lgbt statue of #{city.lgbtq_status}"
  puts "with an air quality score of #{city.air_quality_score}"
  puts "with a greenery score of #{city.greenery_score}"
  puts "with an airport score of #{city.airport_score}"
  puts "with a park score of #{city.park_score}"
  puts "with a beach score of #{city.beach_score}"
  puts "with a hiking score of #{city.hiking_score}"
  puts "link to city image is #{city.image}"
  puts " "
end

# seed_scores
