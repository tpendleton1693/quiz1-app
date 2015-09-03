class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.order(:id)
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.create(quiz_params)
    if @quiz.invalid?
        flash[:error] = '<strong>Could not save!</strong> The data you entered is invalid.'
    end
    redirect_to root_path
  end

  private

  def quiz_params
    params.require(:quiz).permit(:sport)
  end
end
