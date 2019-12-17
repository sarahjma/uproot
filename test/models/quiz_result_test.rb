require 'test_helper'

class QuizResultTest < ActiveSupport::TestCase
  ams = City.create(
    name: "Amsterdam",
    safety_score: 0.8,
    bike_score: 0.8
  )

  la = City.create(
    name: "LA",
    safety_score: 0.1,
    bike_score: 0.1
  )

  qr = QuizResult.create

  q1 = Question.create(
    category: "mobility"
  )

  answer = Answer.create(
    question: q1,
    score: "bike"
  )

  ca = ChosenAnswer.create(
    quiz_result: qr,
    answer: answer
  )

  # chosen_answer_category = ["mobility", "education", "housing", "safety", "career", "leisure", "health"]
  chosen_answer_category = ["mobility"]

  test "ams is bettter dan la because bikes" do
    result = qr.top_3_cities(chosen_answer_category)
    assert result["Amsterdam"] > result["LA"]
  end

  test "la is not bettter dan ams because bikes" do
   result = qr.top_3_cities(chosen_answer_category)
   assert result["LA"] < result["Amsterdam"]
  end
end
