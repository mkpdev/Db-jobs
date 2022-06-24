class Api::V1::MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render json: @movies, each_serializer: MovieSerializer
  end

  def create
  end

  def movie_params
    params.require(:movie).permit(:title)
  end
end
