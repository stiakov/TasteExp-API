FactoryBot.define do
  factory :user do
    trait :valid_user do
      id { 100 }
      name { 'Alfred Hitchcock' }
      email { 's@s.net' }
      password { '123456x' }
    end

    trait :invalid_user do
      id { nil }
      email { 'noemail' }
      password { 'asdf' }
    end
  end
end