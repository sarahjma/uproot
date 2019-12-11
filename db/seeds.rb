require 'open-uri'
require 'json'
require 'pry-byebug'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  # enable_extension "plpgsql"

puts "cleaning database"
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
    score: "car"
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
    score: "walk"
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

puts "creating Questions 4"

  q4 = Question.create(
    category: "housing",
    content: "What is home?",
    display_type: "type-image"
  )


  a1 = Answer.create(
    question: q4,
    image: "https://images.unsplash.com/photo-1469022563428-aa04fef9f5a2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2553&q=80",
    score: "apartment"
  )

  a2 = Answer.create(
    question: q4,
    image: "https://images.unsplash.com/photo-1480074568708-e7b720bb3f09?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3906&q=80",
    score: "house"
  )

  a3 = Answer.create(
    question: q4,
    image: "https://images.unsplash.com/photo-1564501049412-61c2a3083791?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2989&q=80",
    score: "villa"
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

  puts "creating Questions 6"

  q6 = Question.create(
    category: "nature",
    content: "It's Saturday. You finally have a free day. Where do you choose to spend it?",
    display_type: "type-image"
  )


  a1 = Answer.create(
    question: q6,
    image: "https://images.unsplash.com/photo-1446844805183-9f5af45f89ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2167&q=80",
    score: "park"
  )

  a2 = Answer.create(
    question: q6,
    image: "https://images.unsplash.com/photo-1551632811-561732d1e306?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80",
    score: "mountains"
  )

  a3 = Answer.create(
    question: q6,
    image: "https://images.unsplash.com/photo-1496275068113-fff8c90750d1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80",
    score: "beach"
  )

  a4 = Answer.create(
    question: q6,
    image: "https://images.unsplash.com/photo-1551524559-8af4e6624178?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2126&q=80",
    score: "ski"
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

  q7 = Question.create(
    category: "sorting",
    content: "Drag in order what’s important to you?",
    display_type: "type-sortable"
  )


  a1 = Answer.create(
    question: q7,
    text: 'safety',
    score: 'safety'
  )

  a2 = Answer.create(
    question: q7,
    text: "education",
    score: "education"
  )

  a3 = Answer.create(
    question: q7,
    text: "housing",
    score: "housing"
  )

  a4 = Answer.create(
    question: q7,
    text: "career",
    score: "career"
  )

  a5 = Answer.create(
  question: q7,
  text: "mobility",
  score: "mobility"
  )

  a6 = Answer.create(
  question: q7,
  text: "leisure",
  score: "leisure"
  )

  a7 = Answer.create(
  question: q7,
  text: "health",
  score: "health"
  )
  puts "created #{Answer.count} Answers"
  puts "created #{QuizResult.count} QuizResults"
  puts "created #{Question.count} Questions"

#======================================================
# Veronica testing API (let's see how this goes)
# First let's get the cities:

def obtain_cities
  cities_url = []
  url = 'https://api.teleport.org/api/urban_areas/'
  uri = URI(url)
  response = Net::HTTP.get(uri)
  data = JSON.parse(response)
  hash_of_city_data = data['_links']['ua:item']
  # Add each city to an array
  hash_of_city_data.each do |city|
    cities_url << city['href']
  end
  return cities_url
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
  mobility_data.nil? ? 0 : mobility_data['data'].select{|property| property["id"] == "TRAFFIC-INDEX-TELESCORE"}[0]['float_value']
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
    all_weather_array = [0,0,0]
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
def obtain_galleries(search_data)
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

def obtain_movies(search_data)
  # Number of movie theaters in the city
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

# Number of comedy clubs in the city
def obtain_comedy_clubs(search_data)
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

# Number of concert venues in the city
def obtain_concerts(search_data)
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

# Number of museums in the city
def obtain_museums(search_data)
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

# Number of sports venue in the city
def obtain_sports_venues(search_data)
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

# Number of zoos in the city
def obtain_zoos(search_data)
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

def obtain_other_characteristics(search_data)
  # City's spoken language. Returns a string
  puts search_data[11]['data'].select{|property| property["id"] == "SPOKEN-LANGUAGES"}[0]["string_value"]
  # LGBTQ marriage legalization status. Returns a string
  puts search_data[12]['data'].select{|property| property["id"] == "LGBT-DETAIL-MARRIAGE"}[0]["string_value"]
  # Air quality score. Full score is 1
  puts search_data[15]['data'].select{|property| property["id"] == "AIR-POLLUTION-TELESCORE"}[0]["float_value"]
end

# Unemployment rate in country. The number that is outputted, multiply by 10,000 to get the percent value. (0.00062 x 10,000 = 6.2%)
 # puts search_data[9]['data'].select{|property| property["id"] == "UNEMPLOYMENT-RATE"}[0]["percent_value"]

# Do loop for each of the cities:
# Table: cities, Property: health;

def seed_scores
  # Get array of all cities
  all_cities = obtain_cities
  puts "Browsing #{all_cities.length} cities"
  all_cities.each do |city_url|
    # cleaned_city = city.downcase.gsub(/(\s)/, '-').gsub(/[,.]/,"")
    # url = "https://api.teleport.org/api/urban_areas/slug:#{cleaned_city}/details/"
    #puts url
    uri = URI(city_url + "details/")
    puts uri
    response = Net::HTTP.get(uri)
    search_data = JSON.parse(response)
    # Assign each variable we got to an array
    #WORKING obtain_healthcare(search_data['categories'])
    #WORKING obtain_safety(search_data['categories'])
    #WORKING obtain_mobility(search_data['categories'])
    #WORKING obtain_education(search_data['categories'])
    #WORKING obtain_weather(search_data['categories'])
    #WORKING obtain_housing(search_data['categories'])
    #WORKING obtain_fitness_club(search_data['categories'])
    #WORKING obtain_galleries(search_data['categories'])
    #WORKING obtain_movies(search_data['categories'])
    #WORKING obtain_comedy_clubs(search_data['categories'])
    #WORKING obtain_concerts(search_data['categories'])
    #WORKING obtain_museums(search_data['categories'])
    #WORKING obtain_sports_venues(search_data['categories'])
    #WORKING obtain_zoos(search_data['categories'])
    #WORKING obtain_employment(search_data['categories'])
    # obtain_other_characteristics(search_data['categories'])
  end
end

seed_scores
