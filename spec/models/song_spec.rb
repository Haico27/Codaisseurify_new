require 'rails_helper'

RSpec.describe Song, type: :model do
  it { is_expected.to belong_to(:artist) }
  it { is expected.to validates_presence_of :name }
end
