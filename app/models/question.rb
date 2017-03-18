class Question < ApplicationRecord
  has_many :answers
  validates :question_html, presence: true
end
