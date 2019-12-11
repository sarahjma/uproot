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
  puts search_data[19]['data'].select{|property| property["id"] == "TRAFFIC-INDEX-TELESCORE"}[0]["float_value"]
  # Monthly avg public transportation cost in dollar
  puts search_data[3]['data'].select{|property| property["id"] == "COST-PUBLIC-TRANSPORT"}[0]["currency_dollar_value"]
end

def obtain_weather(search_data)
  puts(search_data)
  # Average weather high from teleport
  puts search_data[2]['data'].select{|property| property['id'] == "WEATHER-AVERAGE-HIGH"}[0]["string_value"]
  # Average weather low from teleport
  puts search_data[2]['data'].select{|property| property["id"] == "WEATHER-AVERAGE-LOW"}[0]["string_value"]
  # Weather by type from teleport
  puts search_data[2]['data'].select{|property| property["id"] == "WEATHER-TYPE"}[0]["string_value"]
end

# Education from teleport
def obtain_education(search_data)
  puts search_data[6]['data'].select{|property| property["id"] == "QUALITY-OF-UNIVERSITIES-TELESCORE"}[0]["float_value"]
end

def obtain_housing(search_data)
  # Housing- rent index score from teleport
  puts search_data[8]['data'].select{|property| property["id"] == "RENT-INDEX-TELESCORE"}[0]["float_value"]
  # Housing- small apartment avg rent
  puts search_data[8]['data'].select{|property| property["id"] == "APARTMENT-RENT-SMALL"}[0]["currency_dollar_value"]
  #Housing- medium apartment avg rent
  puts search_data[8]['data'].select{|property| property["id"] == "APARTMENT-RENT-MEDIUM"}[0]["currency_dollar_value"]
  #Housing- large apartment avg rent
  puts search_data[8]['data'].select{|property| property["id"] == "APARTMENT-RENT-LARGE"}[0]["currency_dollar_value"]
end

def obtain_extracurricular(search_data)
  # Monthly avg fitness membership cost in dollar
  puts search_data[3]['data'].select{|property| property["id"] == "COST-FITNESS-CLUB"}[0]["currency_dollar_value"]
  # Number of art galleries in city
  puts search_data[4]['data'].select{|property| property["id"] == "CULTURE-ART-GALLERIES-VENUE-COUNT"}[0]["int_value"]
  # Number of movie theaters in the city
  puts search_data[4]['data'].select{|property| property["id"] == "CULTURE-CINEMAS-VENUE-COUNT"}[0]["int_value"]
  # Number of comedy clubs in the city
  puts search_data[4]['data'].select{|property| property["id"] == "CULTURE-COMEDY-CLUBS-VENUE-COUNT"}[0]["int_value"]
  # Number of concert venues in the city
  puts search_data[4]['data'].select{|property| property["id"] == "CULTURE-CONCERTS-VENUE-COUNT"}[0]["int_value"]
  # Number of museums in the city
  puts search_data[4]['data'].select{|property| property["id"] == "CULTURE-MUSEUMS-VENUE-COUNT"}[0]["int_value"]
  # Number of sports venue in the city
  puts search_data[4]['data'].select{|property| property["id"] == "CULTURE-SPORTS-VENUE-COUNT"}[0]["int_value"]
  # Number of zoos in the city
  puts search_data[4]['data'].select{|property| property["id"] == "CULTURE-ZOOS-VENUE-COUNT"}[0]["int_value"]
end

def obtain_employment(search_data)
  # Unemployment rate in country. The number that is outputted, multiply by 10,000 to get the percent value. (0.00062 x 10,000 = 6.2%)
  puts search_data[9]['data'].select{|property| property["id"] == "UNEMPLOYMENT-RATE"}[0]["percent_value"]
  # Number of startup jobs available on avg
  puts search_data[10]['data'].select{|property| property["id"] == "STARTUP-JOBS-AVAILABLE"}[0]["int_value"]
end

def obtain_other_characteristics(search_data)
  # City's spoken language. Returns a string
  puts search_data[11]['data'].select{|property| property["id"] == "SPOKEN-LANGUAGES"}[0]["string_value"]
  # LGBTQ marriage legalization status. Returns a string
  puts search_data[12]['data'].select{|property| property["id"] == "LGBT-DETAIL-MARRIAGE"}[0]["string_value"]
  # Air quality score. Full score is 1
  puts search_data[15]['data'].select{|property| property["id"] == "AIR-POLLUTION-TELESCORE"}[0]["float_value"]
end

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
    obtain_healthcare(search_data['categories'])
    obtain_safety(search_data['categories'])
    #obtain_mobility(search_data['categories'])
    #puts "City: #{city.downcase} #{obtain_weather(search_data)}"
    # obtain_education(search_data)
    # obtain_housing(search_data)
    # obtain_extracurricular(search_data)
    # obtain_employment(search_data)
    # obtain_other_characteristics(search_data)
  end
end

seed_scores
