# frozen_string_literal: true

FactoryBot.define do
  factory :ingredient do
    organization { nil }
    name { "MyString" }
    unit { "MyString" }
  end
end
