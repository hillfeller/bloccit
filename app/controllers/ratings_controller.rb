class RatingsController < ApplicationController

  def create
    @rating = Rating.find(params[:severity])
    @rating.save
  end

  def edit
    @rating = Rating.find(params[:severity])
  end

end
