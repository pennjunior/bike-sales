class PagesController < ApplicationController
  def about
    @articles = Article.all
  end

  def terms_and_conditions
  end

  def privacy_policy

  end

  def return_and_refund
  end
end
