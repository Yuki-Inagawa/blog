class ArticlesController < ApplicationController

  def index
  end

  def new
    Article.create(image: aricle_params[:image],content: article_params[:content],user: current_user.id)
  end

  def show
  end

  def create
  end
end
