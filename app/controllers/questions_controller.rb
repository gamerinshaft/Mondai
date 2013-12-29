class QuestionsController < ApplicationController
  def index
  	@m_question = MQuestion.new
  end
end
