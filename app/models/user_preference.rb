# frozen_string_literal: true

class UserPreference < ApplicationRecord
  belongs_to :individual_user, class_name: "User"
  belongs_to :organization

  rhino_owner :organization
  rhino_references [ :organization, :individual_user ]

  validates :preference_type, presence: true
  validates :preference_value, presence: true
  validates :individual_user_id, uniqueness: { scope: :preference_type }
end
