class ArticleController < ApplicationController
  def index
    @articles = Article.all
  end
  
  # /last/Rippetoe
  
  def last
      @article = Article.get_last_name(params[:id])

      render plain: ''+ @article.inspect
  end
end
