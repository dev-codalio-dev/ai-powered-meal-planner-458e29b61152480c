# frozen_string_literal: true

FactoryBot.define do
  factory :recipe_ingredient do
    recipe { nil }
    ingredient { nil }
    quantity { 1.5 }
  end
end
