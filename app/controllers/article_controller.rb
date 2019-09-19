class ArticleController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def last

     Article.last(params[:aurthor_last_name])
  end
end
