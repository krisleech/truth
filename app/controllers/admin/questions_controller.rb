module Admin
	class QuestionsController < ApplicationController
		def index
			@questions = Question.all
			render action: 'index'
		end

		def new
			@question = Question.new
		end

		def create
			@question = Question.new(params[:question])
			if @question.valid?
				@question.save
				redirect_to [:admin, :questions]
			else
				render :new
			end
		end

		def edit
			@question = Question.find(params[:id])
		end

		def update
			@question = Question.find(params[:id])
			if @question.update_attributes(params[:question])
				redirect_to [:admin, :questions]
			else
				render :edit
			end
		end
	end
end
