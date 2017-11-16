class Admin::PostsController < Admin::BaseController
  def index
    @articles = Article.all
  end
end