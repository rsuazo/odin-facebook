class AddForeignKeyToLikes < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :likes, :users
    add_foreign_key :likes, :posts
  end
end
