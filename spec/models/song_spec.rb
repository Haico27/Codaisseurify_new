require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      song = Song.new(name: "")
      song.invalid?
      expect(song.errors).to have_key(:name)
    end
  end



  describe "association with artist" do
    let(:artist) { create :artist }

  it "belongs to an artist" do
    song = artist.songs.new(name: "Heaven Knows")

    expect(song.artist).to eq(artist)
  end
end

end
