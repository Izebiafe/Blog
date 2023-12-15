class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :Title
      t.text :text
      t.integer :comments_count, default: 0
      t.integer :likes_count, default: 0
      t.references :author, foreign_key: { to_table: :users }

      t.timestamps null: false
    end
  end
end
