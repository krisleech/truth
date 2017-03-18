class Answer < ApplicationRecord
	belongs_to :question

  validates :answer_html, presence: true


	def truth?
		!fake
	end
end
