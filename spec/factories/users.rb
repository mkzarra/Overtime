FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@candykingdom.ooo"
  end

  factory :user do
    first_name "Finn"
    last_name "the Human"
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :admin_user, class: "AdminUser" do
    first_name "Bonnie"
    last_name "Bubblegum"
    email { generate :email }
    password "ilovemarcie"
    password_confirmation "ilovemarcie"
  end
end