class QuestionsController < ApplicationController
  def index
    @m_question = MQuestion.new
    @b_question = BQuestion.new
  end
  def new
    @m_question = MQuestion.new
    @b_question = BQuestion.new
  end
end
