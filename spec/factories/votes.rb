include RandomData

# #16
FactoryGirl.define do
  factory :votes do
    sequence(:votes)
    comment
    user
    rank 0.0
  end
end
