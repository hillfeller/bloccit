include RandomData

FactoryGirl.define do
  factory :vote do
    value RandomData.random_vote_number
  end
end
