class SongController < ApplicationController
  def create
    @song = Song.new
    @song.name = params[:name]
    @song.save
    redirect_to song_path(@song)
  end
  
  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end
  
  private 
  
  def song_params
    params.require(:song).permit(:name)
  end
end
