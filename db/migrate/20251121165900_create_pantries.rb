class CreatePantries < ActiveRecord::Migration[7.2]
  def change
    create_table :pantries do |t|
      t.references :individual_user, null: false, foreign_key: { to_table: :users }
      t.references :ingredient, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true
      t.float :quantity, null: false
      t.string :unit, null: false
      t.datetime :expiration_date

      t.timestamps
    end
    add_index :pantries, [ :individual_user_id, :ingredient_id ], unique: true
  end
end
