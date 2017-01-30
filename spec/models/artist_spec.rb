require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "association with song" do
    let(:artist) { create :artist }
    let!(:song) { create :song, artist: artist }

  it "has many songs" do
    song1 = artist.songs.new( name: "No Control" )
    song2 = artist.songs.new( name: "Billy")

    expect(artist.songs).to include(song1)
    expect(artist.songs).to include(song2)
end



  end

end
