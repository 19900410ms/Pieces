FactoryBot.define do
  
  factory :profile do
    id             {"1"}
    gender         {"男性"}
    sports         {"アメリカンフットボール"}
    study_fields   {"心理学"}
    created_at     { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end

end