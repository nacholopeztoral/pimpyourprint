class QuizController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    authorize :quiz, :show?
  end
end
