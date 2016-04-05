namespace :sync do
  task feeds: [:environment] do
    Feed.all.each do |feed|
      content = Feedjira::Feed.fetch_and_parse feed.url
      content.entries.each do |news|
        local_news = feed.news.where(title: news.title).first_or_initialize
        local_news.update_attributes(content: news.content, author: news.author, url: news.url, published: news.published)
        p "Synced news - #{news.title}"
      end
      p "Synced Feed - #{feed.name}"
    end
  end
end