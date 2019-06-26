class ArticlesController < ApplicationController

  def index
  end

  def new
    @article = Article.new
  end

  def show
  end

  def create
    Article.create(article_params)
  end

  private
  def article_params
    params.require(:article).permit(:content, :image).merge(user: current_user.id)
  end
end
