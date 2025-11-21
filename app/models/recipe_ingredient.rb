# frozen_string_literal: true

class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  rhino_owner :recipe
  rhino_references [ :recipe, :ingredient ]

  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :ingredient_id, uniqueness: { scope: :recipe_id }
end
