FactoryBot.define do
  factory :like do
    user_id         {"1"}
    contribution_id {"1"}
    created_at      { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end

end