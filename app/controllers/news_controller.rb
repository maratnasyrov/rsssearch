class NewsController < ApplicationController
  # expose(:news) { feed.news }

  def search
    if params[:q].nil?
      news = []
    else
      news = Neews.search params[:q]
    end
  end
end
