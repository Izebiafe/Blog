class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.integer :comments_count
      t.integer :likes_count
      t.references :author, foreign_key: { to_table: :users }, index: true

      t.timestamps
    end
  end
end