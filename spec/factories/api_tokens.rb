# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :api_token do
    token "MyString"
    user_id "9.99"
  end
end
