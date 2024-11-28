class PagesController < ApplicationController
  def about
    @articles = Article.all
  end
end
