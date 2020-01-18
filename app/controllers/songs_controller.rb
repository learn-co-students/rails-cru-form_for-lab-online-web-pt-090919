class SongsController < ApplicationController

     def index 
          @songs = Song.all
     end

     def show 
          @song = Song.find(params[:id])
     end
     
     def new
          @song = Song.new
     end

     def create
          @song = Song.new(set_params(:name))
          if @song.save 
               redirect_to song_path(@song)
          end
     end

     def edit
          @song = Song.find(params[:id])
     end

     def update
          @song = Song.find(params[:id])
          @song.update(set_params(:name))
          redirect_to song_path(@song)
     end

     private 

          def set_params(*args)
               params.require(:song).permit(*args)
          end

end
