class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
    @artist = Artist.new

  end

  def show
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save

    redirect_to artists_path(@artist)
  end

  def destroy
    @artist = Artist.find(params[:id])

    @artist.destroy

    redirect_to root_path
  end

private

def artist_params
  params.require(:artist).permit(:name, :image)
end

end
