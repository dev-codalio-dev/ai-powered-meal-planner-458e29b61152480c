# frozen_string_literal: true

FactoryBot.define do
  factory :meal_plan do
    individual_user { nil }
    start_date { "2025-11-21 16:58:21" }
    end_date { "2025-11-21 16:58:21" }
    plan_name { "MyString" }
    organization { nil }
  end
end
