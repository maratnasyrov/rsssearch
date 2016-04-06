class NewsController < ApplicationController
  expose(:feed)
  expose(:news) { feed.news }

  def search
    if params[:q].nil?
      news = []
    else
      news = neews.search params[:q]
    end
  end
end
