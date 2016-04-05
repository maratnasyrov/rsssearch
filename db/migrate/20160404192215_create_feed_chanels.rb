class CreateFeedChanels < ActiveRecord::Migration
  def change
    create_table :feed_chanels do |t|
      t.string :name, null: false, default: ''
      t.string :url, null: false, default: ''
      t.text :description

      t.timestamps null: false
    end
  end
end
