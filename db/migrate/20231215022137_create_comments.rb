class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps null: false
    end
  end
end
