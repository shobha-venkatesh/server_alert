# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :deployment_alert do
    application_name "MyString"
    account_name "MyString"
    changelog "MyString"
    description "MyString"
    revision "MyString"
    deployment_url "MyString"
    deployed_by "MyString"
  end
end
