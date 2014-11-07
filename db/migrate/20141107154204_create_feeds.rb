class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.text :image
      t.string :title
      t.text :description
      t.text :url
      t.integer :category_id

      t.timestamps
    end
  end
end
