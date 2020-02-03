class ArtistController < ApplicationController
  def create
    @artist = Artist.new
    @artist.name = params[:name]
    @artist.bio = params[:bio]
    @artist.save
    redirect_to artist_path(@artist)
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end
  
  private
  
  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
