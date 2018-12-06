class QuizResultsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
  authorize :quiz_results, :show?
   recicle = params[:recicle]
    if !recicle.nil?
      @score = points
      else
      redirect_to quiz_path, alert: "Please answer all questions"
    end
  end

  private
  def points
    points = { 'Transport' => { 'Cycle' => 0, 'Walking' => 0, 'Drive' => 5, 'Public Transportation' => 3, 'My private jet' => 10 },
             'Flight' => {'None' => 0, 'Less than 10 hours' => 3 , 'Between 10-40 hours' => 5, 'More than 40 hours' => 10},
             'Smoker' => {'Never' => 0,  'Sometimes' => 5, 'Regularly' => 10 },
             'Diet' => {'Never' => 0, '1 to 2 meals per week' => 3 ,'More than 3 meals per week' => 7,'Every meal' => 10},
             'Recicle' => {'Never' => 10, 'Sometimes' => 5, 'Most of the time' => 3,'Always' => 0 }
             }
  if points['Transport'][params[:transport]]|| points['Flight'][params[:flight]]|| points['Smoker'][params[:smoker]]|| points['Diet'][params[:diet]]|| points['Recicle'][params[:recicle]]
    @score = points['Transport'][params[:transport]] + points['Flight'][params[:flight]] + points['Smoker'][params[:smoker]] + points['Diet'][params[:diet]] + points['Recicle'][params[:recicle]]

   else
    @score = nil
   end
  end
end
