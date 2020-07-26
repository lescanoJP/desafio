class SearchesController < ApplicationController
  def index

    # tmdb gem
    @query= params[:q]
    search = Tmdb::Search.new
    search.resource('movie') # determines type of resource
    search.query(@query) # the query to search against
    @result=search.fetch

     end
end
