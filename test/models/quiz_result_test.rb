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
        bike_score: 1
      )
      City.create(
        name: "Paris",
        rent_medium_price: 50,
        bike_score: 1
      )
    end
    it "should return paris if max rent is 500" do
      quiz_result = QuizResult.create(
        rent: 500
      )
      housing_question = Question.create(
        category: "housing",
        content: "Which looks most like home?",
        display_type: "type-image"
      )
      housing_answer = Answer.create(
        question: housing_question,
        score: "rent_medium_price"
      )

      chosen_answer = ChosenAnswer.create(
        answer_id: housing_answer.id,
        quiz_result_id: quiz_result.id
      )


      otherresult = quiz_result.top_3_cities(['mobility']).keys.first
      #binding.pry
      puts "rent test"
      puts otherresult

      assert_equal "Paris", otherresult
    end
  end


  # describe "category test" do
  #   before do
  #     City.destroy_all
  #     Question.destroy_all

  #     ams = City.create(
  #       name: "Amsterdam",
  #       beach_score: 0,
  #       bike_score: 0.9
  #     )

  #     la = City.create(
  #       name: "LA",
  #       beach_score: 0.9,
  #       bike_score: 0.1
  #     )
  #   end
  #   # chosen_answer_category = ["mobility", "education", "housing", "safety", "career", "leisure", "health"]

  #   it "chosen answer ephasis on bike so amsterdam wins" do
  #     chosen_answer = ChosenAnswer.create(
  #       quiz_result: QuizResult.create,
  #       answer: Answer.create(
  #         question: Question.create(category: "mobility"),
  #         score: "bike"
  #       )
  #     )
  #     chosen_answer_category = ["mobility"]

  #     result = chosen_answer.quiz_result.top_3_cities(chosen_answer_category)
  #     puts "bike test"
  #     puts result

  #     assert result[1], "Amsterdam"
  #     assert result[2], "LA"
  #   end

  #     it "chosen answer ephasis on beach so LA wins" do
  #     chosen_answer = ChosenAnswer.create(
  #       quiz_result: QuizResult.create,
  #       answer: Answer.create(
  #         question: Question.create(category: "nature"),
  #         score: "beach"
  #       )
  #     )
  #     chosen_answer_category = ["nature"]

  #     result = chosen_answer.quiz_result.top_3_cities(chosen_answer_category)
  #     puts "beach test"
  #     puts result

  #     assert_equal result[1], "LA"
  #     assert_equal result[2], "Amsterdam"
  #   end
  # end
end
