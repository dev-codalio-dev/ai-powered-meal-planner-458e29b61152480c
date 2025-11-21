# frozen_string_literal: true

class MealPlan < ApplicationRecord
  belongs_to :individual_user, class_name: "User"
  belongs_to :organization
  has_many :meal_plan_items, dependent: :destroy

  rhino_owner :organization
  rhino_references [ :organization, :individual_user ]

  validates :plan_name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_after_start_date

  private

    def end_date_after_start_date
      return if end_date.blank? || start_date.blank?

      if end_date < start_date
        errors.add(:end_date, "must be after the start date")
      end
    end
end
