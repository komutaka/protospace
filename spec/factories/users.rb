FactoryGirl.define do

  factory :user do
    nickname              { Faker::Name.name }
    member                "div"
    work                  "Web-mentor"
    profile               "omantin"
    avatar                "92435.jpg"
    email                 { Faker::Internet.email }
    password              "00000000"
    password_confirmation "00000000"
  end

end
