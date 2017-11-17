module PostsHelper
  def popular_posts
    Post.order(views: :desc).limit(2).all
  end

  def popular_posts_first
    popular_posts.first
  end

  def popular_posts_last
    popular_posts.last
  end
end
