class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: :new

  def index
    @articles = Article.all
    # .page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    @article = Article.new
  end

  def show
  end

  def create
    Article.create(article_params)
    redirect_to root_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    if article.user_id == current_user.id
      @article = article.update(article_params)
    end
  end

  def destroy
    article = Article.find(params[:id])
    if article.user_id == current_user.id
      article.destroy
    end
    redirect_to root_path
  end

  private
  def article_params
    params.require(:article).permit(:content).merge(user_id: current_user.id)
  end
end
