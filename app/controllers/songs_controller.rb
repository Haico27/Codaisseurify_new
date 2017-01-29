class SongsController < ApplicationController

  def create
    @artist = Artist.find(params[:artist_id])

    @song = @artist.songs.build(song_params)

    @song.save

    redirect_to artist_path(@artist)
  end


  def destroy
    @artist = Artist.find(params[:artist_id])

    @song = @artist.songs.find(params[:id])

    @song.destroy

    redirect_to artist_path(@artist)
  end

  private

  def song_params
    params.require(:song).permit(:name)
  end
end
