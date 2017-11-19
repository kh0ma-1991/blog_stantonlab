class PostsController < ApplicationController
  before_action :set_post, only: :show

  # GET /posts
  def index
    @posts = Post.all.order(:created_at).page(params[:page])
  end

  # GET /posts/1
  def show
    @post.views += 1
    @post.save
  end


  private

    def set_post
      @post = Post.find(params[:id])
    end
end
