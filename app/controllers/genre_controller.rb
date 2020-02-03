class GenreController < ApplicationController
  def create
    @genre = Genre.new
    @genre.name = params[:name]
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end
  
  private
  
  def genre_params
    params.require(:genre).permit(:name)
  end
end
