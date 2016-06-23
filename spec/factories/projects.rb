FactoryGirl.define do

  factory :project do
    catch_copy      "すごい"
    user_id         "1"
    title           "村長"
    concept         "村長のすごさ"
  end

  #   after( :build ) do |project|
  #     [:main_image, :sub_image].each do |image|
  #       project.images << FactoryGirl.build(:image, image_type: image, project: project)
  #   end
  # end

end
