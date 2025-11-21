# frozen_string_literal: true

FactoryBot.define do
  factory :rating do
    individual_user { nil }
    recipe { nil }
    score { 1 }
    feedback { "MyText" }
    organization { nil }
  end
end
