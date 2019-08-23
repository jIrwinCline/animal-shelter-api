FactoryBot.define do
  factory :user do
    name { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
  end

  factory(:animal) do
    name {'flurf'}
    species {'cat'}
    shelter {'North Oak Animal Shelter'}
  end
end
