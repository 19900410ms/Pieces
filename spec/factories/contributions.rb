FactoryBot.define do
  
  factory :contribution do
    id           { Faker::IDNumber }
    title        {"jQuery"}
    image        {"/public/images/test_image.jpeg"}
    text         {"非同期通信難しい"}
    user_id      {"1"}
    likes_count  {"0"}
    genre_id     {"1"}
    public_id    {"1"}
    created_at   { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end

end