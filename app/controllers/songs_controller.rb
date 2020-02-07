class SongsController < ApplicationController
  
  def new
    @song = Song.new
  end
  
  def create
    @song = Song.create(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def edit
    @song = song_find
  end
  
  def update
    @song = song_find
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path
  end

  def index
    @songs = Song.all
  end

  def show
    @song = song_find
  end
  
  private
  
  def song_params(*args)
    params.require(:song).permit(*args)
  end
  
  def song_find
    Song.find(params[:id])
  end
  
end
