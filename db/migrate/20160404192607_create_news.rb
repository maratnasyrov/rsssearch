class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :content
      t.string :url
      t.string :author
      t. datetime :published
      t.references :feed_chanel
      
      t.timestamps null: false
    end
  end
end
