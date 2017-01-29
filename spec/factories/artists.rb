FactoryGirl.define do
  factory :artist do
    name    { Faker::Name.title }
  end
end
