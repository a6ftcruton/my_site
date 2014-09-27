# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "Post Title"
    body "Post body text goes in here, maybe with an image as well."
    category_id 1
  end
end
