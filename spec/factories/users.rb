FactoryBot.define do
  
  factory :user do
    id                      {"1"}
    nickname                {"DaiGo"}
    email                   {"daigo@gmail.com"}
    password                {"test1234"}
    password_confirmation   {"test1234"}
  end

end