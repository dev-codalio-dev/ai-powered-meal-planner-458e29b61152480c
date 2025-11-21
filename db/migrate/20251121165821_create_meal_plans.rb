class CreateMealPlans < ActiveRecord::Migration[7.2]
  def change
    create_table :meal_plans do |t|
      t.references :individual_user, null: false, foreign_key: { to_table: :users }
      t.references :organization, null: false, foreign_key: true
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
      t.string :plan_name, null: false

      t.timestamps
    end
  end
end
