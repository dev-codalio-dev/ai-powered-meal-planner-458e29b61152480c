# frozen_string_literal: true

FactoryBot.define do
  factory :pantry do
    individual_user { nil }
    ingredient { nil }
    quantity { 1.5 }
    unit { "MyString" }
    expiration_date { "2025-11-21 16:59:00" }
    organization { nil }
  end
end
