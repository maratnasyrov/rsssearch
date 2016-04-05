class FeedsController < ApplicationController
  expose(:feeds)
  expose(:feed, attributes: :feed_params)

  def create
    feed.save
    redirect_to root_path
  end

  def destroy
    feed.destroy
    redirect_to root_path
  end

  def refresh
    system "bundle exec rake sync:feeds"
    redirect_to root_path
  end

  private

  def feed_params
    params.require(:feed).permit(:name, :url, :description)
  end
end
