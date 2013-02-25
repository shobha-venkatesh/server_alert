# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :application_alert do
    user_application_id 1
    short_description "MyText"
    long_description "MyText"
    application_name "MyString"
    account_name "MyString"
    severity "MyString"
    message "MyString"
    alert_url "MyString"
  end
end
