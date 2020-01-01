FactoryBot.define do
  
  factory :contribution do

    id           {"1"}
    title        {"jQuery"}
    image        {"/public/images/test_image.jpeg"}
    text         {"非同期通信難しい"}
    user_id      {"1"}
    likes_count  {"0"}
    genre_id     {"1"}
    public_id    {"1"}
  end

end