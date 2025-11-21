# frozen_string_literal: true

class Rating < ApplicationRecord
  belongs_to :individual_user, class_name: "User"
  belongs_to :recipe
  belongs_to :organization

  rhino_owner :organization
  rhino_references [ :organization, :individual_user, :recipe ]

  validates :score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :feedback, presence: true
  validates :individual_user_id, uniqueness: { scope: :recipe_id }
end
