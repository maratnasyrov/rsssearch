class RenameFeedChanelToFeed < ActiveRecord::Migration
  def change
    rename_table :feed_chanels, :feeds
  end
end
