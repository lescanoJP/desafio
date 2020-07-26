class WishesController < ApplicationController
  def index
    wishes = current_user.wishes   
    @movies = []

    wishes.each do |wish|
      movie = Tmdb::Movie.detail(wish.movie_id)
      @movies.push(movie)
    end

    @movies
  end

  def create
    puts params[:movie_id] 
    current_user.wishes.create(movie_id: params[:movie_id]) 

    redirect_to wishes_path  
  end

  def destroy
    current_user.wishes.find_by(movie_id: params[:id] ).destroy

    redirect_to wishes_path
  end
end
