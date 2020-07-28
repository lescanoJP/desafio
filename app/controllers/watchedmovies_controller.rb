class WatchedmoviesController < ApplicationController
  def index
    watchedmovies = current_user.watchedmovies   
    @watchedmovies = []

    watchedmovies.each do |watchedmovie|
      movie = Tmdb::Movie.detail(watchedmovie.movie_id)
      @watchedmovies.push(movie)
    end

    @watchedmovies

  end

  def create
    puts params[:movie_id] 
    current_user.watchedmovies.create(movie_id: params[:movie_id]) 

    redirect_to watchedmovies_path 
  end

  def destroy
    current_user.watchedmovies.find_by(movie_id: params[:id] ).destroy

    redirect_to watchedmovies_path
  end
end
