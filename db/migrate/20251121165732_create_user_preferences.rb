class CreateUserPreferences < ActiveRecord::Migration[7.2]
  def change
    create_table :user_preferences do |t|
      t.references :individual_user, null: false, foreign_key: { to_table: :users }
      t.references :organization, null: false, foreign_key: true
      t.string :preference_type, null: false
      t.string :preference_value, null: false

      t.timestamps
    end
    add_index :user_preferences, [ :individual_user_id, :preference_type ], unique: true
  end
end
