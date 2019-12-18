require 'test_helper'
require 'minitest/spec'

class QuizResultTest < ActiveSupport::TestCase
  describe "rent test" do
    before do
      City.destroy_all
      Question.destroy_all

      City.create(
        name: "Calgary",
        rent_medium_price: 1000,
        bike_score: 1,
        traffic_score: 1,
        galleries_score: 1

      )
      City.create(
        name: "Paris",
        rent_medium_price: 50,
        bike_score: 1,
        traffic_score: 1,
        galleries_score: 1
      )
    end

    it "should return paris if max rent is 500" do
      # these are the seeds
      quiz_result = QuizResult.create(
        rent: 500
      )

      ChosenAnswer.create(
        quiz_result: quiz_result,
        answer: Answer.create(
          question: Question.create(
            category: "housing"
          ),
          score: "medium_house"
        )
      )

      ChosenAnswer.create(
        quiz_result: quiz_result,
        answer: Answer.create(
          question: Question.create(
            category: "mobility"
          ),
          score: "bike"
        )
      )

      # this is calling the method on the QuizResult model
      result = quiz_result.top_3_cities(['mobility'])

      puts "rent test"
      puts result

      # this checks is Paris is actually the first result
      assert_equal "Paris", result.keys.first
      assert_equal ["Paris", "Calgary"], result.keys

    end
  end


  describe "category test" do
    before do
      City.destroy_all
      Question.destroy_all

      City.create(
        name: "Amsterdam",
        beach_score: 0.1,
        bike_score: 0.9,
        rent_medium_price: 100
      )

      City.create(
        name: "LA",
        beach_score: 0.9,
        bike_score: 0.1,
        rent_medium_price: 100
      )

      City.create(
        name: "SF",
        beach_score: 0,
        bike_score: 0,
        rent_medium_price: 100
      )


      City.create(
        name: "Leiden",
        beach_score: 0,
        bike_score: 0,
        rent_medium_price: 100
      )
    end
    # chosen_answer_category = ["mobility", "education", "housing", "safety", "career", "leisure", "health"]

    it 'should only return three cities' do
      quiz_result = QuizResult.create(rent: 500)

      ChosenAnswer.create(
        quiz_result: quiz_result,
        answer: Answer.create(
          question: Question.create(
            category: "housing"
          ),
          score: "medium_house"
        )
      )

      result = quiz_result.top_3_cities([])
      puts result

      assert result.keys.count, 3
    end

    it "chosen answer ephasis on bike so amsterdam wins" do
      quiz_result = QuizResult.create(rent: 500)

      ChosenAnswer.create(
        quiz_result: quiz_result,
        answer: Answer.create(
          question: Question.create(
            category: "housing"
          ),
          score: "medium_house"
        )
      )

      ChosenAnswer.create(
         quiz_result: quiz_result,
         answer: Answer.create(
           question: Question.create(category: "mobility"),
           score: "bike"
         )
       )


      result = quiz_result.top_3_cities(["mobility"])
      puts result

      assert result["Amsterdam"] > result["LA"]
    end

    it "chosen answer emphasis on beach so LA wins" do
      quiz_result = QuizResult.create(rent: 500)

      ChosenAnswer.create(
        quiz_result: quiz_result,
        answer: Answer.create(
          question: Question.create(
            category: "housing"
          ),
          score: "medium_house"
        )
      )
      ChosenAnswer.create(
        quiz_result: quiz_result,
        answer: Answer.create(
          question: Question.create(category: "leisure"),
          score: "beach"
        )
      )

      result = quiz_result.top_3_cities(["leisure"])
      puts "beach test"
      puts result

      assert result["LA"] > result["Amsterdam"]
    end
  end
end
