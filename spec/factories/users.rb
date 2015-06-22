FactoryGirl.define do
  sequence(:handle) { |n| "handle#{n}"            }
  sequence(:email)  { |n| "email#{n}@example.com" }

  factory :user do
    handle                { generate :handle }
    email                 { generate :email  }
    password              'password'
    password_confirmation 'password'
  end
end
