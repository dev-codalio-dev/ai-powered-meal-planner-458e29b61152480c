class CreateMealPlanItems < ActiveRecord::Migration[7.2]
  def change
    create_table :meal_plan_items do |t|
      t.references :meal_plan, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true
      t.datetime :scheduled_date, null: false
      t.string :meal_type, null: false

      t.timestamps
    end
    add_index :meal_plan_items, [ :meal_plan_id, :recipe_id, :scheduled_date, :meal_type ], unique: true,
name: "idx_meal_plan_item_unique_recipe_per_meal_time"
  end
end
