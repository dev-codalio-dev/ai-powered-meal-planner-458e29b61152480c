# frozen_string_literal: true

FactoryBot.define do
  factory :user_preference do
    individual_user { nil }
    preference_type { "MyString" }
    preference_value { "MyString" }
    organization { nil }
  end
end
