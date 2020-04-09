FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Adventure Time"
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "C'mon grab your friends"
    user
  end
end