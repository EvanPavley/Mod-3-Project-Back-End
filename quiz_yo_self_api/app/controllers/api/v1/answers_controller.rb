class Api::V1::AnswersController < ApplicationController
  def index
    @answers = Answer.all
    render json: @answers, status: :ok
  end

  def show
    @answer = Answer.find(params[:id])
    render json: @answer, status: :ok
  end

  def create
    @answer = Answer.create(answer_params)
    render json: @answer, status: :ok
  end

  private
  def answer_params
    params.require(:answer).permit(:description, :solution, :question_id)
  end
end
