include RandomData


FactoryGirl.define do
  factory :comment do
    body RandomData.random_paragraph
    user
    post
    #rank 0.0
  end
end
