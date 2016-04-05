class RenameFeedsColumn < ActiveRecord::Migration
  def change
    rename_column :news, :feed_chanel_id, :feed_id
  end
end
