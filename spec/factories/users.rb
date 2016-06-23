FactoryGirl.define do

  factory :user do
    password =  Faker::Internet.password(8)
    nickname              { Faker::Name.name }
    member                { Faker::Company.profession }
    work                  { Faker::Company.catch_phrase }
    profile               { Faker::Hacker.say_something_smart }
    avatar                "92435.jpg"
    email                 { Faker::Internet.email }
    password              password
    password_confirmation password
  end

end
