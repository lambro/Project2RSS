class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :article_id
      t.integer :user_id
      t.boolean :is_bookmarked
      t.boolean :is_favourited
      t.boolean :is_read
      t.timestamps
    end
  end
end
