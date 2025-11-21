# frozen_string_literal: true

FactoryBot.define do
  factory :shopping_list_item do
    individual_user { nil }
    ingredient { nil }
    quantity { 1.5 }
    unit { "MyString" }
    is_purchased { false }
    organization { nil }
  end
end
