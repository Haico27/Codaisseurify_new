require 'rails_helper'

RSpec.describe Artist, type: :model do
  it "has many songs" { is_expected.to have_many(:songs) }
  it "is invalid without a name" { is expected.to validate_presence_of :name }
end
