require 'test_helper'

class QuizResultTest < ActiveSupport::TestCase
  ams = City.create(
    name: "Amsterdam",
    beach_score: 0,
    bike_score: 0.9
  )

  la = City.create(
    name: "LA",
    beach_score: 0.9,
    bike_score: 0.1
  )

  # chosen_answer_category = ["mobility", "education", "housing", "safety", "career", "leisure", "health"]

  test "chosen answer ephasis on bike so amsterdam wins" do
    chosen_answer = ChosenAnswer.create(
      quiz_result: QuizResult.create,
      answer: Answer.create(
        question: Question.create(category: "mobility"),
        score: "bike"
      )
    )
    chosen_answer_category = ["mobility"]

    result = chosen_answer.quiz_result.top_3_cities(chosen_answer_category)
    puts result

    assert result[1], "Amsterdam"
    assert result[2], "LA"
  end

    test "chosen answer ephasis on beach so LA wins" do
    chosen_answer = ChosenAnswer.create(
      quiz_result: QuizResult.create,
      answer: Answer.create(
        question: Question.create(category: "nature"),
        score: "beach"
      )
    )
    chosen_answer_category = ["nature"]

    result = chosen_answer.quiz_result.top_3_cities(chosen_answer_category)
    puts result

    assert_equal result[1], "LA"
    assert_equal result[2], "Amsterdam"
  end

end
