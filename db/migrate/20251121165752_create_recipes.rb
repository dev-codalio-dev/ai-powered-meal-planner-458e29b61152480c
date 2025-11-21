class CreateRecipes < ActiveRecord::Migration[7.2]
  def change
    create_table :recipes do |t|
      t.references :organization, null: false, foreign_key: true
      t.string :name, null: false
      t.text :description, null: false
      t.text :instructions, null: false
      t.float :prep_time_minutes
      t.float :cook_time_minutes
      t.integer :servings, null: false
      t.string :cuisine_type
      t.string :meal_type
      t.text :nutritional_info

      t.timestamps
    end
    add_index :recipes, [ :organization_id, :name ], unique: true
  end
end
