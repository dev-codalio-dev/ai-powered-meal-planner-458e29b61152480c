# frozen_string_literal: true

class MealPlanItem < ApplicationRecord
  belongs_to :meal_plan
  belongs_to :recipe

  rhino_owner :meal_plan
  rhino_references [ :meal_plan, :recipe ]

  validates :scheduled_date, presence: true
  validates :meal_type, presence: true
  validates :recipe_id, uniqueness: { scope: [ :meal_plan_id, :scheduled_date, :meal_type ] }
end
