class CreateRatings < ActiveRecord::Migration[7.2]
  def change
    create_table :ratings do |t|
      t.references :individual_user, null: false, foreign_key: { to_table: :users }
      t.references :recipe, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true
      t.integer :score, null: false
      t.text :feedback, null: false

      t.timestamps
    end
    add_index :ratings, [ :individual_user_id, :recipe_id ], unique: true
  end
end
