class BQuestionsController < ApplicationController
  before_action :set_b_question, only: [:show, :edit, :update, :destroy]
  # GET /b_questions
  # GET /b_questions.json
  def index
    @b_questions = BQuestion.all
  end

  # GET /b_questions/1
  # GET /b_questions/1.json
  def show
    @b_answer = BAnswer.new
    @b_answers = BAnswer.all
  end

  # GET /b_questions/new
  def new
    @b_question = BQuestion.new
  end

  # GET /b_questions/1/edit
  def edit
  end

  # POST /b_questions
  # POST /b_questions.json
  def create
    @b_question = BQuestion.new(b_question_params)

    respond_to do |format|
      if @b_question.save
        format.html { redirect_to b_question_path(@b_question), notice: "【問題を作成しました。】" }
        format.json { render action: 'show', status: :created, location: @b_question }
      else
        format.html { render action: 'new' }
        format.json { render json: @b_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /b_questions/1
  # PATCH/PUT /b_questions/1.json
  def update
    respond_to do |format|
      if @b_question.update(b_question_params)
        format.html { redirect_to @b_question }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @b_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_questions/1
  # DELETE /b_questions/1.json
  def destroy
    @b_question.destroy
    respond_to do |format|
      format.html { redirect_to questions_path }
      format.json { head :no_content }
    end
  end

  def kaitou
    @b_question = BQuestion.find(params[:id])
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_b_question
      @b_question = BQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def b_question_params
      params.require(:b_question).permit(:content)
    end
end
