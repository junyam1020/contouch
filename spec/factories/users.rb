FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials }
    email                 { Faker::Internet.free_email }
    password = Faker::Internet.password(min_length: 8)
    password              { password }
    password_confirmation { password }
    last_name             { Faker::Japanese::Name.last_name }
    first_name            { Faker::Japanese::Name.first_name }
    birthday              { Faker::Date.between(from: '1930-01-01', to: Date.today) }
  end
end
