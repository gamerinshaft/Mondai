class QuestionsController < ApplicationController
  def index
    @m_questions = MQuestion.all
    @b_questions = BQuestion.all
  end
  def new
    @m_question = MQuestion.new
    @b_question = BQuestion.new
  end
end
