class HomeController < ApplicationController
  before_filter :authenticate_google_apps_user!
  skip_before_filter :authenticate_google_apps_user!, :only => [:post_a_comment]

  def index
    @announcements = Announcement.all

    if params.has_key? (:category)
      @posts = Post.joins(:categories).where('categories_posts.category_id = ?', params[:category]).order('posts.created_at desc')
    else
      @posts = Post.order("created_at DESC")
    end
  end

  def post_a_comment
    @post_comment = PostComment.new(params[:post_content])
    saved = @post_comment.save!
    redirect_to "/"
  end
end
