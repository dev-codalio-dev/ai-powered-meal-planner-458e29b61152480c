# frozen_string_literal: true

class Recipe < ApplicationRecord
  belongs_to :organization
  has_many :recipe_ingredients, dependent: :destroy
  has_many :meal_plan_items, dependent: :destroy
  has_many :ratings, dependent: :destroy

  rhino_owner :organization
  rhino_references [ :organization ]

  validates :name, presence: true, uniqueness: { scope: :organization_id }
  validates :description, presence: true
  validates :instructions, presence: true
  validates :servings, presence: true, numericality: { greater_than: 0 }
end
