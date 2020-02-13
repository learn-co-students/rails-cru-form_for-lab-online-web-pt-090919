class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def show
    @song = song_find
  end

  def create
    @song = Song.new(song_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = song_find
  end

  def update
    @song = song_find
    @song.update(song_params(:name))
    redirect_to song_path
  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end

  def song_find
    Song.find(params[:id])
  end

end
