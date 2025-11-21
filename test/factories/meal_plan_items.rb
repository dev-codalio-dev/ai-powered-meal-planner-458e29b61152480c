# frozen_string_literal: true

FactoryBot.define do
  factory :meal_plan_item do
    meal_plan { nil }
    recipe { nil }
    scheduled_date { "2025-11-21 16:58:31" }
    meal_type { "MyString" }
  end
end
