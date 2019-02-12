class Api::V1::QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
    render json: @quizzes, status: :ok
  end

  def show
    @quiz = Quiz.find(params[:id])
    render json: @quiz, status: :ok
  end

  def create
    @quiz = Quiz.create(quiz_params)
    render json: @quiz, status: :ok
  end

  private
  def quiz_params
    params.require(:quiz).permit(:name, :image, :question_ids)
  end
end
