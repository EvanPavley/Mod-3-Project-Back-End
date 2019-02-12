class Api::V1::QuestionsController < ApplicationController
  def index
    @questions = Question.all
    render json: @questions, status: :ok
  end

  def show
    @question = Question.find(params[:id])
    render json: @question, status: :ok
  end

  def create
    @question = Question.create(question_params)
    render json: @question, status: :ok
  end

  private
  def question_params
    params.require(:question).permit(:description, :multiple_choice, :timed_value, :correct, :quiz_id)
  end
end
