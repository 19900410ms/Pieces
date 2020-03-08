FactoryBot.define do
  
  factory :comment do

    id              { Faker::IDNumber }
    text            {"サンプルコメント送信"}
    user_id         {"1"}
    contribution_id {"1"}
    created_at      { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end

end