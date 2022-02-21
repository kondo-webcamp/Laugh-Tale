class GenresController < ApplicationController
  def new
  end

  def index
    @genres = Genre.all
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    @genres = Genre.all
    @genre.save
    redirect_to genres_path
  end

  def show
  end

  def edit
    @genre = Genre.find(params[:id])
  end
  
  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to genres_path
  end

  private
  def genre_params
    params.require(:genre).permit(:genre_name, :genre_status)
  end
end
