class QuizResultsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
  @score = points
  end

  private
  def points
    points = { 'Transport' => { 'Bike' => 0, 'My feet' => 0, 'Gas vehicle' => 5, 'Public Transport' => 3, 'My private jet' => 10 },
             'Flight' => { 'I do not fly' => 0, 'Less than 10 hours (2 flights)' => 3 , 'Between 10-40 (1 or 2 long distance flights)' => 5, 'More than 50 ' => 10},
             'Smoker' => {  'ALWAYS' => 10, 'Sometimes' => 5, 'Never' => 0},
             'Diet' => { 'Always' => 10,'Around 5' => 7, '1 to 2 meals per week' => 3 , 'Never' => 0},
             'Recicle' => { 'ALWAYS' => 0, 'MOST OF THE TIME' => 3, 'SOMETIMES' => 5, 'NEVER' => 10 }
             }
  score = points['Transport'][params[:transport]] + points['Flight'][params[:flight]] + points['Smoker'][params[:smoker]] + points['Diet'][params[:diet]] + points['Recicle'][params[:recicle]]
  end
end
