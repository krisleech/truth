module Admin
  class AnswersController < ApplicationController
    def index
      @question = Question.find(params[:question_id])
      @answers = @question.answers.all
    end

    def new
      @question = Question.find(params[:question_id])
      @answer = Answer.new
    end

    def create
      @question = Question.find(params[:question_id])
      @answer = @question.answers.new(params[:answer])
      if @answer.valid?
        @answer.save
        redirect_to [:admin, @question, :answers]
      else
        render :new
      end
    end

    def edit
      @question = Question.find(params[:question_id])
      @answer = Answer.find(params[:id])
    end

    def update
      @question = Question.find(params[:question_id])
      @answer = Answer.find(params[:id])
      if @answer.update_attributes(params[:answer])
        redirect_to [:admin, @question, :answers]
      else
        render :edit
      end
    end
  end
end

