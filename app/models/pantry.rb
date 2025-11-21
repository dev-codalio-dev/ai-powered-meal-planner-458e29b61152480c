# frozen_string_literal: true

class Pantry < ApplicationRecord
  belongs_to :individual_user, class_name: "User"
  belongs_to :ingredient
  belongs_to :organization

  rhino_owner :organization
  rhino_references [ :organization, :individual_user, :ingredient ]

  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :unit, presence: true
  validates :ingredient_id, uniqueness: { scope: :individual_user_id }
end
