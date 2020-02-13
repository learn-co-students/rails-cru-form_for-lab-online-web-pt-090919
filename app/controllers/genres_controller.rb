class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def show
    @genre = genre_find
  end

  def create
    @genre = Genre.new(genre_params(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = genre_find
  end

  def update
    @genre = genre_find
    @genre.update(genre_params(:name))
    redirect_to genre_path
  end

  private

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end

  def genre_find
    Genre.find(params[:id])
  end

end
