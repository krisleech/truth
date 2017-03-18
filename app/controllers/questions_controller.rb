class QuestionsController < ApplicationController
  def index
    @questions = Question.all.map do |question|
      {
        id: question.id,
        question_html: question.question_html,
        facts: question.facts,
        answers: question.answers.map do |answer|
        {
          answer_html: answer.answer_html,
          fake: answer.fake
        }
      end
      }
    end


    respond_to do |format|
      format.json do
        render json: @questions
      end
    end
  end
end
