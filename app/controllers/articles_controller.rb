class ArticlesController < ApplicationController
  before_action :find_article, only: :show

  def show
    render json: @article
  end

  def index
    @articles = Article.all
    render json: @articles, include: [:author]
  end

  private

  def find_article
    @article = Article.find params[:id]
  end
end
