class ExercisesController < ApplicationController
  respond_to :json

  def create
    binding.pry
    @exercise = Exercise.new(params[:exercise])
    if @exercise.save!
      @exercise
    else

    end
  end
end
