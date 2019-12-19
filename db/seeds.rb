require 'open-uri'
require 'json'

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


  career_choices = ["Account Manager", "Accountant", "Administrative Assistant", "Architect", "Attorney", "Business Analyst", "Business Development", "C Level Executive", "Cashier", "Chef", "Chemical Engineer", "Civil Engineer", "Content Marketing", "Copywriter", "Customer Support", "Data Analyst", "Data Scientist", "Dentist", "Electrical Engineer", "Executive Assistant", "Fashion Designer", "Finance Manager", "Financial Analyst", "Graphic Designer", "Hardware Engineer", "Human Resources Manager", "IT Manager", "Industrial Designer", "Interior Designer", "Lecturer", "Marketing Manager", "Mechanical Engineer", "Mobile Developer", "Nurse", "Office Manager", "Operations Manager", "Pharmacist", "Physician", "Postdoctoral Researcher", "Product Manager", "Project Manager", "QA Engineer", "Receptionist", "Research Scientist", "Sales Manager", "Software Engineer", "Systems Administrator", "Teacher", "UX Designer", "Waiter", "Web Designer", "Web Developer"]

  # Creating question #2
  career_choices.each do |career|
    Answer.create(
    question: q2,
    text: career,
    score: career,
    )
  end
puts "creating Questions 3"

  q3 = Question.create(
    category: "leisure",
    content: "What are some of the things you value?",
    display_type: "type-buttons"
  )


  a1 = Answer.create(
    question: q3,
    text: "LGBTQ equality",
    score: "lgbtq",
  )

  a2 = Answer.create(
    question: q3,
    text: "Air quality",
    score: "air_quality",
  )

  a3 = Answer.create(
    question: q3,
    text: "Water quality",
    score: "water",
  )

  a4 = Answer.create(
    question: q3,
    text: "Minority equality",
    score: "minority",
  )

  a5 = Answer.create(
    question: q3,
    text: "Education",
    score: "education",
  )

  a6 = Answer.create(
    question: q3,
    text: "GDP growth",
    score: "gdp_growth",
  )

  a7 = Answer.create(
    question: q3,
    text: "City cleanliness",
    score: "cleanliness",
  )

  a8 = Answer.create(
    question: q3,
    text: "Business freedom",
    score: "business_freedom",
  )


  a10 = Answer.create(
    question: q3,
    text: "Gun ownership rights",
    score: "gun_ownership",
  )

  a11 = Answer.create(
    question: q3,
    text: "Startup scene",
    score: "startup",
  )

  # a12 = Answer.create(
  #   question: q3,
  #   text: "wine tasting",
  #   score: "wine tasting",
  # )

puts "creating Questions 4"

  q4 = Question.create(
    category: "housing",
    content: "Which looks most like home?",
    display_type: "type-image"
  )


  a1 = Answer.create(
    question: q4,
    image: "https://images.unsplash.com/photo-1560448075-cbc16bb4af8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
    score: "small_house"
  )

  a2 = Answer.create(
    question: q4,
    image: "https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2173&q=80",
    score: "medium_house"
  )

  a3 = Answer.create(
    question: q4,
    image: "https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
    score: "large_house"
  )

  a4 = Answer.create(
    question: q4,
    image: "https://images.unsplash.com/photo-1548513830-5e684f0d4d82?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2989&q=80",
    score: "mobile_home_house"
  )
puts "creating Questions 5"

  q5 = Question.create(
    category: "leisure",
    content: "It's Friday! What does it look like?",
    display_type: "type-image"
  )

  a1 = Answer.create(
    question: q5,
    image: "https://images.unsplash.com/photo-1524368535928-5b5e00ddc76b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3900&q=80",
    score: "concerts"
  )

  a2 = Answer.create(
    question: q5,
    image: "https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80",
    score: "movie_venues"
  )

  a3 = Answer.create(
  question: q5,
  image: "https://images.unsplash.com/photo-1561587327-41f8d18f71df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
  score: "galleries"
  )

  a4 = Answer.create(
  question: q5,
  image: "https://shanghaicomedybunker.com/wp-content/uploads/2018/11/20299553.jpg",
  score: "comedy"
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
    image: "https://cdn4.img.sputniknews.com/images/105402/35/1054023500.jpg",
    score: "beach"
  )

  a4 = Answer.create(
    question: q6,
    image: "https://images.unsplash.com/photo-1562754193-ba39a22c110b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2224&q=80",
    score: "museum"
  )

  a5 = Answer.create(
  question: q6,
  image: "https://cdn.getyourguide.com/img/tour_img-664632-146.jpg",
  score: "zoo"
  )

  a6 = Answer.create(
  question: q6,
  image: "https://images.unsplash.com/photo-1498846323785-c40aafaaa4f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1258&q=80",
  score: "sports_venues"
  )

  puts "creating Questions 7"

  q7 = Question.create(
    category: "rent",
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

  # a3 = Answer.create(
  #   question: q8,
  #   text: "housing",
  #   score: "housing"
  # )

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

# First let's get the cities:
def obtain_cities
  # We want it to return an array
  # for each city, a has of href and name
  uri = URI('https://api.teleport.org/api/urban_areas/')
  response = Net::HTTP.get(uri)
  data = JSON.parse(response)
  data['_links']['ua:item']
end

def obtain_score(search_data, main_category, sub_category)
  element_data = search_data.select{|property| property["id"] == main_category}[0]
  if element_data.nil?
    return 0
  else
    if element_data['data'].select{|property| property["id"] == sub_category}[0].nil?
      return 0
    else
      return element_data['data'].select{|property| property["id"] == sub_category}[0]["float_value"]
    end
  end
end

def obtain_value(search_data, main_category, sub_category)
  element_data = search_data.select{|property| property["id"] == main_category}[0]
  if element_data.nil?
    return 0
  else
    if element_data['data'].select{|property| property["id"] == sub_category}[0].nil?
      return 0
    else
      return element_data['data'].select{|property| property["id"] == sub_category}[0]["int_value"]
    end
  end
end

def obtain_percentage(search_data, main_category, sub_category)
  element_data = search_data.select{|property| property["id"] == main_category}[0]
  if element_data.nil?
    return 0
  else
    if element_data['data'].select{|property| property["id"] == sub_category}[0].nil?
      return 0
    else
      return element_data['data'].select{|property| property["id"] == sub_category}[0]["percent_value"]
    end
  end
end


def obtain_string(search_data, main_category, sub_category)
  element_data = search_data.select{|property| property["id"] == main_category}[0]
  if element_data.nil?
    return 0
  else
    if element_data['data'].select{|property| property["id"] == sub_category}[0].nil?
      return 0
    else
      return element_data['data'].select{|property| property["id"] == sub_category}[0]["string_value"]
    end
  end
end

def obtain_currency(search_data, main_category, sub_category)
  element_data = search_data.select{|property| property["id"] == main_category}[0]
  if element_data.nil?
    return 0
  else
    if element_data['data'].select{|property| property["id"] == sub_category}[0].nil?
      return 0
    else
      return element_data['data'].select{|property| property["id"] == sub_category}[0]["currency_dollar_value"]
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
  end
end

puts "Deleting any previous city data..."
City.destroy_all

obtain_cities.each do |api_city|
  city = City.new(name: api_city['name'])

  uri = URI(api_city['href'] + "details/")
  puts uri
  response = Net::HTTP.get(uri)
  search_data = JSON.parse(response)

  city.healthcare_score = obtain_score( \
    search_data['categories'], \
    "HEALTHCARE", \
    "HEALTHCARE-QUALITY-TELESCORE")

  city.safety_score = obtain_score( \
    search_data['categories'], \
    "SAFETY", \
    "CRIME-RATE-TELESCORE" )

  city.gun_ownership_score = obtain_score( \
    search_data['categories'], \
    "SAFETY", \
    "GUN-OWNERSHIP-SCORE-TELESCORE" )

  city.traffic_score = obtain_score( \
    search_data['categories'], \
    "TRAFFIC", \
    "TRAFFIC-INDEX-TELESCORE")

  city.education_score = obtain_score( \
    search_data['categories'], \
    "EDUCATION" , \
    "QUALITY-OF-UNIVERSITIES-TELESCORE")

  city.train_score = obtain_score( \
    search_data['categories'], \
    "TRAVEL-CONNECTIVITY", \
    "TRAIN-TRANSPORT-TELESCORE")

  city.museum_count = obtain_value( \
    search_data['categories'], \
    "CULTURE", \
    "CULTURE-MUSEUMS-VENUE-COUNT")

  city.museum_score = obtain_score( \
    search_data['categories'], \
    "CULTURE", \
    "CULTURE-MUSEUMS-TELESCORE")

  city.zoo_count = obtain_value( \
    search_data['categories'], \
    "CULTURE", \
    "CULTURE-ZOOS-VENUE-COUNT")

  city.zoo_score = obtain_score( \
    search_data['categories'], \
    "CULTURE", \
    "CULTURE-ZOOS-TELESCORE")

  city.sport_venues_count = obtain_value( \
    search_data['categories'], \
    "CULTURE", \
    "CULTURE-SPORTS-VENUE-COUNT")

  city.sports_venues_score = obtain_score( \
    search_data['categories'], \
    "CULTURE", \
    "CULTURE-SPORTS-TELESCORE")

  city.movie_venues_count = obtain_value( \
    search_data['categories'], \
    "CULTURE", \
    "CULTURE-CINEMAS-VENUE-COUNT")

  city.movie_venues_score = obtain_score( \
    search_data['categories'], \
    "CULTURE", \
    "CULTURE-CINEMA-TELESCORE")

  city.comedy_count = obtain_value( \
    search_data['categories'], \
    "CULTURE", \
    "CULTURE-COMEDY-CLUBS-VENUE-COUNT")

  city.comedy_score = obtain_score( \
    search_data['categories'], \
    "CULTURE", \
    "CULTURE-COMEDY-CLUBS-TELESCORE")

  city.concerts_venues = obtain_value( \
    search_data['categories'], \
    "CULTURE", \
    "CULTURE-CONCERTS-VENUE-COUNT")

  city.concerts_score = obtain_score( \
    search_data['categories'], \
    "CULTURE", \
    "CULTURE-CONCERTS-TELESCORE")

  city.galleries_count = obtain_value( \
    search_data['categories'], \
    "CULTURE", \
    "CULTURE-ART-GALLERIES-VENUE-COUNT")

  city.galleries_score = obtain_score( \
    search_data['categories'], \
    "CULTURE", \
    "CULTURE-ART-GALLERIES-TELESCORE")

  city.lgbtq_status = obtain_string( \
    search_data['categories'], \
    "MINORITIES", \
    "LGBT-DETAIL-MARRIAGE")

  city.lgbtq_score = obtain_score( \
    search_data['categories'], \
    "MINORITIES", \
    "LGBT-INDEX-TELESCORE")

  city.minority_score = obtain_score( \
    search_data['categories'], \
    "MINORITIES", \
    "TOLERANCE-TOWARDS-MINORITIES-TELESCORE")

  city.air_quality_score = obtain_score( \
    search_data['categories'], \
    "POLLUTION", \
    "AIR-POLLUTION-TELESCORE")

  city.cleanliness_score = obtain_score( \
    search_data['categories'], \
    "POLLUTION", \
    "CLEANLINESS-TELESCORE")

  city.greenery_score = obtain_score( \
    search_data['categories'], \
    "POLLUTION", \
    "URBAN-GREENERY-TELESCORE")

  city.airport_score = obtain_score( \
    search_data['categories'], \
    "TRAVEL-CONNECTIVITY", \
    "AIRPORT-HUB-TELESCORE")

  city.water_score = obtain_score( \
    search_data['categories'], \
    "POLLUTION", \
    "DRINKING-WATER-QUALITY-TELESCORE")

  city.life_expectancy = obtain_score( \
    search_data['categories'], \
    "HEALTHCARE", \
    "HEALTHCARE-LIFE-EXPECTANCY")

  city.park_score = obtain_score( \
    search_data['categories'], \
    "POLLUTION", \
    "URBAN-GREENERY-TELESCORE")

  city.rent_small_price = obtain_currency( \
    search_data['categories'], \
    "HOUSING", \
    "APARTMENT-RENT-SMALL") * 0.9

  city.rent_medium_price = obtain_currency( \
    search_data['categories'], \
    "HOUSING", \
    "APARTMENT-RENT-MEDIUM") * 0.9

  city.rent_large_price = obtain_currency( \
    search_data['categories'], \
    "HOUSING", \
    "APARTMENT-RENT-LARGE") * 0.9

  city.temp_min = obtain_string( \
    search_data['categories'], \
    "CLIMATE", \
    "WEATHER-AVERAGE-LOW")

  city.temp_max = obtain_string( \
    search_data['categories'], \
    "CLIMATE", \
    "WEATHER-AVERAGE-HIGH")

  city.sunny_score = obtain_percentage( \
    search_data['categories'], \
    "CLIMATE", \
    "WEATHER-AV-POSSIBILITY-SUNSHINE")

  city.weather_type = obtain_string( \
    search_data['categories'], \
    "CLIMATE" , \
    "WEATHER-TYPE")

  city.business_freedom_score = obtain_score( \
    search_data['categories'], \
    "BUSINESS-FREEDOM", \
    "BUSINESS-FREEDOM-TELESCORE")

  city.gdp_growth_score = obtain_score( \
    search_data['categories'], \
    "ECONOMY", \
    "GDP-GROWTH-RATE-TELESCORE")

  city.startup_score = obtain_score( \
    search_data['categories'], \
    "STARTUPS", \
    "STARTUP-CLIMATE-STARTUPS-TELESCORE")

  city.beach_score = 0.5 * obtain_score(search_data['categories'], "OUTDOORS", "SEASIDE-ACCESS-TELESCORE") + 0.5 * city.sunny_score

  city.hiking_score = city.greenery_score

  city.walking_score = \
    1/3 * city.greenery_score + 1/3 * city.safety_score + 1/3 * city.sunny_score

  city.bike_score = \
    0.5 * (1 - city.air_quality_score) + 0.5 * city.sunny_score

  # Getting careers from teleport
  uri = URI(api_city['href'] + 'salaries/')
  response = Net::HTTP.get(uri)
  search_data = JSON.parse(response)

  i = 0
  while search_data['salaries'][i]
    city.career << search_data['salaries'][i]['job']['title']
    i += 1
  end

  i = 0
  while search_data['salaries'][i]
    city.salary << search_data['salaries'][i]['salary_percentiles']['percentile_50']
    i += 1
  end


  # This is to obtain the image associated with each city. In different part or API
  uri = URI(api_city['href'] + 'images/')
  response = Net::HTTP.get(uri)
  search_data = JSON.parse(response)

  city.image = search_data['photos'][0]['image']['mobile']

  uri = URI(api_city['href'])
  response = Net::HTTP.get(uri)
  search_data = JSON.parse(response)
  city.country = search_data['_links']['ua:countries'][0]['name']

  city.save!

  puts "jobs are these #{city.career}"
  puts "jobs are these #{city.salary}"
  puts "#{city.name}, #{city.country} was created."
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
