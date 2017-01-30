FactoryGirl.define do
  factory :song do
    name    { Faker::Name.title }
  end
end
