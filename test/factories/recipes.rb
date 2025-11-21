# frozen_string_literal: true

FactoryBot.define do
  factory :recipe do
    organization { nil }
    name { "MyString" }
    description { "MyText" }
    instructions { "MyText" }
    prep_time_minutes { 1.5 }
    cook_time_minutes { 1.5 }
    servings { 1 }
    cuisine_type { "MyString" }
    meal_type { "MyString" }
    nutritional_info { "MyText" }
  end
end
