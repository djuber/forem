FactoryBot.define do
  image_path = Rails.root.join("spec/support/fixtures/images/image1.jpeg")

  factory :badge do
    sequence(:title) { |n| "#{Faker::Book.title}-#{n}" }
    description { Faker::Lorem.sentence }
    badge_image { File.open(image_path) }
  end
end
