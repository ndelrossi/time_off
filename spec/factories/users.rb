FactoryGirl.define do
  factory :user do
    email "foo@bar.com"
    password "pwd12345"
    password_confirmation "pwd12345"
  end
end
