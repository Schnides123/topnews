class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.integer :story_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
    add_foreign_key :likes, :stories, column: :story_id
    add_foreign_key :likes, :users, column: :user_id
  end
end
