FactoryGirl.define do

  factory :project do
    catch_copy      { Faker::Lorem.word }
    user_id         "1"
    title           { Faker::Name.name }
    concept         { Faker::Lorem.sentence }
  end

  #   after( :build ) do |project|
  #     project.main_image = build(:main_image, project: project)
  #   end
  # end

end
