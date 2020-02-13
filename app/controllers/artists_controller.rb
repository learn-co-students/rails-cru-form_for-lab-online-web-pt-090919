class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = artist_find
  end

  def update
    @artist = artist_find
    @artist.update(artist_params(:name, :bio))
    redirect_to artist_path
  end

  def index
    @artists = Artist.all
  end

  def show
    @artist = artist_find
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

  def artist_find
    Artist.find(params[:id])
  end

end
