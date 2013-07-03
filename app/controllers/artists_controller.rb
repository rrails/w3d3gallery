class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new

  end

  def create
    artist = Artist.create(params[:artist])
    redirect_to(artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id]) #find the artist we want to update
  end

  def update
    artist = Artist.find(params[:id]) #find the artist we want to update
    artist.update_attributes(params[:artist])
    redirect_to(artist)
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.destroy
    redirect_to(artists_path)
  end

end