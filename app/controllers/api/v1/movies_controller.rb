class Api::V1::MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render json: @movies, each_serializer: MovieSerializer
  end

  def create
    CreateQueueJob.set(priority: 1).perform_later(job_id)
  end

  private
  def movie_params
    params.require(:movie).permit(:title)
  end
end
