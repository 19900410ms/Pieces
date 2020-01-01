FactoryBot.define do
  
  factory :user do
    id                      { Faker::IDNumber }
    nickname                {"DaiGo"}
    sequence(:email)        { Faker::Internet.email }
    password                {"test1234"}
    password_confirmation   {"test1234"}
    created_at              { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end

end