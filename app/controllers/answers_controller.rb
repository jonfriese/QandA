class AnswersController < ApplicationController
before_filter :authenticate_user!

  before_filter :load_question
  # GET /answers
  # GET /answers.json
  def index
    @answer = @question.answers.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @answers }
    end
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
    @answer = @question.answers.find(params[:id])
  end

  # GET /answers/new
  # GET /answers/new.json
  def new
    @answer = @question.answers.new
  end

  # GET /answers/1/edit
  def edit
    @answer = @question.answers.find(params[:id])
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = @question.answers.new(params[:answer])
    @answer.question_id = @question.id

    respond_to do |format|
      if @answer.update_attributes(params[:question])
        format.html { redirect_to [@question, @answer], notice: 'Answer was successfully created!!!' }
        format.json { render json: @answer, status: :created, location: @answer }
      else
        format.html { render action: "new" }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /answers/1
  # PUT /answers/1.json
  def update
    @answer = @question.answers.find(params[:id])

    respond_to do |format|
      if @answer.update_attributes(params[:answer])
        format.html { redirect_to question_answers_path, notice: 'Answer was successfully updated!!!' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer = @question.answers.find(params[:id])
    @answer.destroy

    respond_to do |format|
      format.html { redirect_to question_answers_url }
    end
  end

  private

  def load_question
    @question = Question.find(params[:question_id])
  end
end
