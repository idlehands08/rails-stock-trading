class HtmlPagesController < ApplicationController
  def news
    @marketNews = MarketNews::Client.news_update
  end
end
