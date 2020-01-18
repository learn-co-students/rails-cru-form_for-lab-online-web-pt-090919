class GenresController < ApplicationController

     def show 
          @genre = Genre.find(params[:id])
     end
     
     def new
          @genre = Genre.new
     end

     def create
          @genre = Genre.new(set_params(:name))
          if @genre.save 
               redirect_to genre_path(@genre)
          end
     end

     def edit
          @genre = Genre.find(params[:id])
     end

     def update
          @genre = Genre.find(params[:id])
          @genre.update(set_params(:name))
          redirect_to genre_path(@genre)
     end

     private 

          def set_params(*args)
               params.require(:genre).permit(*args)
          end

end
